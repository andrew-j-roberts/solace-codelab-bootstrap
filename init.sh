#!/bin/bash
#
# init.sh
#
# Automates these steps to get yourself up and running with Codelab:
# * Create boilerplate for Codelab
# * Configure a nodemon watch command to rebuild your codelab on save
# * Delete the .git folder from this bootstrap 
# - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + - + -

cd `dirname $0`

# validate that a codelab name was included as an argument
if [ "$#" -ne 1 ]; then
	echo "USAGE: $0 <CODELAB_NAME>"
	echo ""
	exit 0
fi

# env variables
CODELAB_NAME=$1
# local variables
codelab_markdown_filename="$CODELAB_NAME.md"
markdown_template_filename="markdown.template"
package_json_filename="package.json"

# validate that markdown template and package.json still exist
if [ ! -f "$markdown_template_filename" ] || [ ! -f "$package_json_filename" ]; then
  msg "ERROR!"
  echo "Could not find one of the following files:"
  echo "  - $markdown_template_filename"
  echo "  - $package_json_filename"
  echo ""
  echo "Why'd you go and delete one of these files :("
  exit 0
fi

# replace placeholder codelab id in markdown template file with name provided by command line argument 
sed -i '' \
  -e "s/CODELAB_NAME.*/$CODELAB_NAME/g" \
  $markdown_template_filename

# rename markdown template file 
mv $markdown_template_filename $codelab_markdown_filename

# replace placeholder codelab name in the watch command with name provided in command line argument
sed -i '' \
  -e "s/CODELAB_FILENAME/$codelab_markdown_filename/g" \
  $package_json_filename

# clean up 
rm -rf .git
