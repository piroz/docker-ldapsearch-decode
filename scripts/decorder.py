#!/usr/bin/env python
# -*- coding:utf-8 -*-

import sys, re


input_file = sys.stdin.read()
r = re.compile('\n ', re.MULTILINE)
f = re.sub(r, '', input_file)
input = f.split('\n')

for line in input:
    if re.match(r'^\w+::\s', line):
        label, b64item = line.split()
        print label, b64item.decode('base64')
    else:
        sys.stdout.write(line)