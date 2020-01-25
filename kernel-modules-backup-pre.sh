#!/bin/sh

KVER="${KVER:-$(uname -r)}"
if [[ -e "/usr/lib/modules/${KVER}" ]]; then
    TMPDIR=/tmp/kernel-module-backup
    mkdir -p $TMPDIR
    echo "copying modules"
    cp -a "/usr/lib/modules/${KVER}" $TMPDIR
    if findmnt -t tmpfs /usr/lib/modules > /dev/null; then
        echo "unmounting /usr/lib/modules"
        umount /usr/lib/modules
    fi
fi
