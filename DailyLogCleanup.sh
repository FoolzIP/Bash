#!/bin/bash
FILEDATE=$(date --date=yesterday +%Y_%m_%d)
FILENAME='vpn_log'_$FILEDATE'.txt'

OLDFILE='/home/xander/Desktop/Logs/vpn_log.txt'
NEWFILE='/home/xander/Desktop/Logs/'$FILENAME
cp $OLDFILE $NEWFILE
rm $OLDFILE

