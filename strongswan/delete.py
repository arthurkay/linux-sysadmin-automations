#!/bin/env python

from subprocess import call
from sys import argv
import os

def ipdelete(ip):
	call(os.path.dirname(os.path.realpath(__file__))+'/ipdelete '+ip, shell=True)

def run():
	for i in range(1,len(argv)):
		ipdelete(argv[i])
		print("Deleted {}".format(argv[i]))

run()
