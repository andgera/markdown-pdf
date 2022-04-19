#!/bin/bash

pandoc "$1" \
    -f gfm \
    --toc \
    --include-before-body cover.tex \
    --include-in-header body.tex \
    --highlight-style mythemes.theme\
    -V toc-title='Table of contents' \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="DejaVu Serif" \
    -V monofont="DejaVu Sans Mono" \
    -V links-as-notes:true \
    --pdf-engine=xelatex \
    -o "$2"

