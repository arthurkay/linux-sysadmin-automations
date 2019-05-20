#!/bin/bash
#Script to backup databases

# Parameters
# $1 = username
# $2 = password
# $4 = database name
# $database dump location

mysqldump -u $1 -p$2 $3 > db_backup.sql

mkdir -p $4

mv db_backup.sql ./$4/$(date +"%d-%m-%YT%T").sql