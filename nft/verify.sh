#!/bin/sh
#
# usage ./verify.sh 57/f0/57f09b39eccc4b38a50246e19302260d com.yevaud

filename=$1
verify=$2

# Verify checksum
openssl sha1 -signature ${filename}.sha1 ./${filename}

# Verify signature
openssl dgst -sha256 -verify $PWD/../issuers/$verify -signature ${filename}.sign ./$filename
