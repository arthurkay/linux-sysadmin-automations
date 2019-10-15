#!/bin/env python

from subprocess import call
from sys import argv
import os

def ipcreate(ip):
	call(os.path.dirname(os.path.realpath(__file__))+'/ipcreate '+ip, shell=True)

def run():
	for i in range(1,len(argv)):
		ipcreate(argv[i])
		print("Added {}".format(argv[i]))

run()
