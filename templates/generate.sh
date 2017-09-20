#!/usr/bin/env bash
hexdump -v -e '5/1 "%02x""\n"' /dev/urandom | awk -v OFS=',' '{ print substr($0, 1, 8), substr($0, 9, 2), int(NR * 32768 * rand()) }' | head -n {{count}}
