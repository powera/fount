#!/bin/false

# do not run directly - psuedocode

name=$1
private_key=$2

openssl sha1 -out ./$name.sha1 ./$name
openssl dgst -sha256 -out ./$name.sign -sign=$private_key ./$name
