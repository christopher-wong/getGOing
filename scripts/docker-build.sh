#!/bin/bash

set -e
set -x

docker build -t project -f Dockerfile .