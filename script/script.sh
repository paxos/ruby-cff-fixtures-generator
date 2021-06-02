#!/bin/bash
rm -f /output/*
for i in /input/*.cff; do filename=$(basename -- "$i"); filename="${filename%.*}"; cffconvert -f apalike -if /$i -of /output/"${filename}.apa"; done
for i in /input/*.cff; do filename=$(basename -- "$i"); filename="${filename%.*}"; cffconvert -f bibtex -if /$i -of /output/"${filename}.bibtex"; done