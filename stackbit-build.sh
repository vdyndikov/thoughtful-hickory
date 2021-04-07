#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/606d9ac71adb7f0016ca1ef3

# build site
npm run build

echo "stackbit-build.sh: finished build"
