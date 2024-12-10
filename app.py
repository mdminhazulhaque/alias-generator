#!/usr/bin/env python3

from flask import render_template
import flask
from slugify import slugify

from lib.alias import load_all

app = flask.Flask("app")

# app.config["TEMPLATES_AUTO_RELOAD"] = True
# app.jinja_env.auto_reload = True

@app.template_filter('slug')
def slug(s):
    return slugify(s)

# @app.route('/')
# def index():
#     rendered = render_template('index.html', \
#             aliases=load_all,
#         )
#     return rendered

if __name__ == "__main__":
    with app.app_context():
        rendered = render_template('index.html', aliases=load_all())
        print(rendered)