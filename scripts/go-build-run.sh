#!/bin/bash

set -e
set -x

CGO_ENABLED=0 GOOS=linux go build -o ./cmd/projectd/projectd ./cmd/projectd/

./cmd/projectd/projectd
