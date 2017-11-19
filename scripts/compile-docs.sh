#! /bin/sh

#####
# Variables
#####

README='README.md'

#####
# Functions
#####

appendFileToReadme () {
  if [ ! -z "$2" ] 
    then echo "## $2\n" >> $README 
  fi
  
  cat $1 >> $README
}

#####
# Setup
#####

echo "# Notes \n" > $README

find . -name README.md | while read f
do rm $f
done

#####
# Index
#####

sh ./scripts/construct-readme.sh 'notes/'

## move the notes index out to root
mv notes/README.md README.md

## Dont break links
# sed -i 's|./|./notes/|g' _index.md


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
sed -i 's|/|./|' temp
mv -f temp ./notes/_tree.md

appendFileToReadme ./notes/_tree.md "Current Structure"

find . -name _index.md | while read f
do rm $f
done