#!/bin/bash
docker run sebastianalbers/privoxy:latest-$1 --version |
  sed '/^Privoxy version/!{q1}; s/^Privoxy version \([0-9\.]*\) .*$/\1/'
