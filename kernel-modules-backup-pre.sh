#!/bin/sh

KVER="${KVER:-$(uname -r)}"
if [[ -e "/usr/lib/modules/${KVER}" ]]; then
    if mountpoint "/usr/lib/modules/${KVER}"; then
        exit 0
    fi
    TMPDIR=/tmp/kernel-module-backup
    mkdir -p $TMPDIR
    echo "copying modules"
    cp -a "/usr/lib/modules/${KVER}" $TMPDIR
fi
