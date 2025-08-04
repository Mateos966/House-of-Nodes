#!/usr/bin/env bash

rm -r toolbox/static/*
mkdir toolbox/static/assets
cp -R toolbox/assets/* toolbox/static/
cp toolbox/templates/html/basic-page-template.php toolbox/static/index.php
