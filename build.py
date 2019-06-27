#!/usr/bin/env python3

from glob import glob
import json
import os
from os.path import basename

ALIAS_DIR = "alias.d/*"
OUTPUT_JSON = "site/_data/aliases.json"

def generate_json():
    data = {}
    for alias in glob(ALIAS_DIR):
        key = basename(alias).replace(".alias", "")
        
        with open(alias, "r") as fp:        
            data[key] = []
            content = fp.read().split("\n")
            for line in content:
                if line == "":
                    pass
                elif line[0]  == "#":
                    pass
                else:
                    data[key].append(line)
    with open(OUTPUT_JSON, "w") as fp:
        fp.write(json.dumps(data, indent=4))

def generate_readme():
    with open("README.tp", "r") as fp:
        head, tail = fp.read().split("__LIST__")
    
    with open("README.md", "w") as fp:
        fp.write(head)
        alias_dir = "alias.d"
        for alias in glob(ALIAS_DIR):
            fp.write("\nsource /path/to/" + alias)
        fp.write(tail)

def generate_site():
    cmds = [
        "cd site",
        "jekyll build"
        ]
    run = " && ".join(cmds)
    os.system(run)
    
def cleanup():
    cmd = "rm -rfv docs/* site/_data/*"
    os.system(cmd)

if __name__ == "__main__":
    cleanup()
    generate_json()
    generate_readme()
    generate_site()
