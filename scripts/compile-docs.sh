#! /bin/sh

#####
# Variables
#####

README='README.md'

#####
# Functions
#####

appendFileToReadme () {
  if [ ! -z $2 ] 
    then echo "## $2\n" >> $README 
  fi
  
  cat $1 >> $README
}

#####
# Setup
#####

echo "# $README \n" > $README

#####
# Index
#####

sh ./scripts/index-builder.sh 'notes/'

# move the notes index out to root
mv notes/_index.md _index.md
# Dont break links
sed -i 's|./|./notes/|g' _index.md

#####
# Tree
#####

# Create tree

sh ./scripts/tree.sh

# Append Tree

## embed in code block
echo '```' | cat - ./notes/_tree.md > temp
echo '```' >> temp

## replace generated tree root
sed -i 's|/notes|.|' temp
mv -f temp ./notes/_tree.md

appendFileToReadme ./notes/_tree.md "Tree"

rm **/_index.md