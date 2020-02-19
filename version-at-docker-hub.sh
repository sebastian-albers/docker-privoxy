#!/bin/bash

set -eou pipefail

version=$1
url="https://hub.docker.com/v2/repositories/sebastianalbers/privoxy/tags/${version}"
curl -s "$url" | jq '.name' | grep "${version}"

