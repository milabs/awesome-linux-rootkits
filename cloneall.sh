#!/usr/bin/env bash

#   awesome-linux-rootkits
#   Usage: ./cloneall.sh

set -eou pipefail
dst_dir=rootkits

list=$(grep GitHub < README.md |awk '{print $2}')

errlist=""
mkdir -p "$dst_dir"
for gh in $list ; do
    pushd "$dst_dir" >/dev/null && {
        r=$(sed -e 's/.git//g' <<< "$gh")
        if [[ ! -d "$(basename "$r")" ]]; then
            echo "awesome-linux-rootkits cloning $r ..."
            git clone "$gh" >/dev/null 2>&1 || {
                errlist="$errlist $gh"
            }
        fi
        popd >/dev/null
    }
done

if [[ ! -z "$errlist" ]]; then
    for r in $errlist; do
        echo "*** awesome-linux-rootkits *** Error cloning repo $r" >&2
    done
fi
