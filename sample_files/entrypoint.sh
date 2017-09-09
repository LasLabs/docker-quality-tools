#!/bin/bash
# Copyright 2017 LasLabs Inc.
# License Apache 2.0 (https://www.apache.org/licenses/LICENSE-2.0.html).
#
# Thanks Camptocamp for the idea!
# http://www.camptocamp.com/en/actualite/flexible-docker-entrypoints-scripts/

set -e

dir=/entrypoint.d
if [ -d $dir ]; then
    run-parts --exit-on-error $dir
fi

if [ -n "$1" ]; then
    set -x
    exec "$@"
fi
