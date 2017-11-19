#! /bin/sh

ENTRY_DIR=$1;

listDirectories() {
  ls -d $1*/ 2> /dev/null
}

appendFileToReadme () {
  if [ -f $1 ]
  then
    if [ ! -z "$2" ]
      then echo "## $2\n" >> $README 
    fi
    
    cat $1 >> $README
    echo "" >> $README
  fi
}

makeReadme() {
  README="$1/README.md"
  
  # Make index
  sh ./scripts/index-builder.sh $1
  
  BASE_NAME=$(basename $1)

  echo "# $BASE_NAME\n" | sed 's/[^ _-]*/\u&/g' > $README

  # Prep the notes Readme to become root dir Readme
  if [ "$1" = "notes/" ]
  then sed -i 's|./|./notes/|g' $1/_index.md
  fi
  
  appendFileToReadme $1/_index.md "Index"

  appendFileToReadme $1/_verbatim.md
  appendFileToReadme $1/_body.md
  appendFileToReadme $1/_resources.md "Resources"

  listDirectories $1 | while read x
  do
    makeReadme $x;
  done
}

makeReadme $ENTRY_DIR;
