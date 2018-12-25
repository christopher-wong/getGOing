#!/bin/bash

set -e
set -x

docker run -it \
    -v ${PWD}:/go/src/project \
    -v ./go/src/project/vendor \
    --rm \
    project