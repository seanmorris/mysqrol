#!/usr/bin/env bash
mysqrol_parse 3 64 \
| egrep '[-+|]|$' -ui --color=always 2>/dev/null \
| less -RSXMNI
