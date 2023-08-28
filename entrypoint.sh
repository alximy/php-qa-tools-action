#!/bin/sh -l

export PATH=/usr/local/src/vendor/bin:$PATH

composer update --working-dir=/usr/local/src

exec $1
