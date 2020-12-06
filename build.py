#!/usr/bin/env python3

from glob import glob
from os.path import basename
from jinja2 import Environment, FileSystemLoader
from collections import OrderedDict

DATA = {}

for alias in glob("./alias.d/*"):
    key = basename(alias).replace(".alias", "")
    
    with open(alias, "r") as fp:        
        DATA[key] = []
        content = fp.read().split("\n")
        for line in content:
            if line == "":
                pass
            elif line[0]  == "#":
                pass
            else:
                DATA[key].append(line)

DATA = OrderedDict(sorted(DATA.items(), key=lambda x: x[0]))

file_loader = FileSystemLoader("templates")
env = Environment(loader=file_loader, extensions=['jinja2_slug.SlugExtension'])

# generate html
index = env.get_template('index.html')
index.stream(aliases=DATA).dump('./docs/index.html')
