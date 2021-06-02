#!/bin/bash
for i in /input/*.cff; do cffconvert -f apalike -if /$i -of /output/"$(basename -- $i.apa)"; done
for i in /input/*.cff; do cffconvert -f bibtex -if /$i -of /output/"$(basename -- $i.bibtex)"; done