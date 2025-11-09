#!/bin/bash

path=path_to_file
certName="myCertificate.p12"
fullPath="$path$certName"

rm -rf ~/.globus/userkey.pem
rm -rf ~/.globus/usercert.pem

openssl pkcs12 -clcerts -nokeys -in $fullPath -out ~/.globus/usercert.pem

openssl pkcs12 -nocerts -in $fullPath -out ~/.globus/userkey.pem

chmod 0400 ~/.globus/userkey.pem




