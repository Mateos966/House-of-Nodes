#!/usr/bin/env bash

pwd
cd documents/sources
pwd
plantuml -tsvg -o media/ *.uml
pwd 

