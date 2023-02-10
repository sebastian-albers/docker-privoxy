#!/bin/bash

set -eou pipefail

docker run --rm sebastianalbers/privoxy:latest-$1 --version > version.tmp
sed '/^Privoxy version/!{q1}; s/^Privoxy version \([0-9\.]*\) .*$/\1/' version.tmp
rm version.tmp
