#!/usr/bin/env python3

from glob import glob
from os.path import basename, dirname, sep
from collections import OrderedDict

def load_all():
    pwd = dirname(__file__)
    aliases = {}

    for alias in glob(pwd +  "/alias.d/*"):
        key = basename(alias).replace(".alias", "")
        
        with open(alias, "r") as fp:        
            aliases[key] = []
            content = fp.read().split("\n")
            for line in content:
                if line == "":
                    pass
                elif line[0]  == "#":
                    pass
                else:
                    aliases[key].append(line)

    aliases = OrderedDict(sorted(aliases.items(), key=lambda x: x[0]))
    
    return aliases