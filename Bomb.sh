#!/bin/bash
dsh=1
mkdir /root/sucks

while [ 1 ]
do
zip -q -r -P $dsh$(date +%Y-%m-%d,%H:%m)$dsh$dsh$(date +%Y-%m-%d,%H:%m) /root/sucks/1.zip /root/origin
mv /root/sucks/1.zip /root/sucks/$dsh.zip

dsh=$(($dsh+1))
bypy upload /root/sucks -v -d
rm -rf /root/sucks/*
done
