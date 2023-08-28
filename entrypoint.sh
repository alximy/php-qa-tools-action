#!/bin/sh -l

export PATH=/usr/local/src/vendor/bin:$PATH

export QA_TOOL=`echo "$1" | head -n1 | cut -d " " -f1`

if [ ! -d "${QA_VENDOR_PATH}/$QA_TOOL" ]; then
  export QA_TOOL="all"
fi

composer --working-dir=/usr/local/src bin "$QA_TOOL" update

exec $1
