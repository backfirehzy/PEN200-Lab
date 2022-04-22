#!/usr/bin/env python2
import sys
import hashlib,binascii

hash = hashlib.new('md4', str(sys.argv[1]).encode('utf-16le')).digest()
print binascii.hexlify(hash)
