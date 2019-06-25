#!/bin/bash

F=README.md
grep -B999 __LIST__ README.md.template | grep -v __LIST__ > $F
ls -1 alias.d | xargs -L1 -I{} echo source /path/to/{} >> $F
grep -A999 __LIST__ README.md.template | grep -v __LIST__ >> $F
