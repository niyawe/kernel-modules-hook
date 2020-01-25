#!/bin/sh

KVER="${KVER:-$(uname -r)}"
TMPDIR=/tmp/kernel-module-backup
if [[ -e "$TMPDIR" ]]; then
    echo "mounting tmpfs"
    mount -t tmpfs tmpfs /usr/lib/modules
    echo "moving modules to tmpfs"
    mv -n "$TMPDIR/$KVER" /usr/lib/modules
    echo "removing modules from /tmp"
    rm -r $TMPDIR
fi
