#!/bin/bash
#
# export.sh
#
# export the codelab to the right directory

# Get markdown file name
codelab_markdown_filename=`ls *.md`

claat export -ga UA-3921398-10 -o ../../codelabs/ $codelab_markdown_filename
