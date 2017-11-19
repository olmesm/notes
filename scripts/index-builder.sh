#! /bin/sh

ENTRY_DIR=$1;

listDirectories() {
  ls -d $1*/ 2> /dev/null
}

makeIndexFile() {
  echo "building Index for $1"
  echo "## Index \n" > $1/_index.md

  ls $1 --ignore=_* | while read entry
    do
      FILE_PATH=`echo "$entry" | sed -e "s|$1|.|"`
      NAME=`echo $FILE_PATH | sed -e "s|\..*||"`
      
      # Replace spaces to URL encoded
      FILE_PATH=`echo "$entry" | sed -e "s| |%20|"`
      
      echo "- [$NAME](./$FILE_PATH)" >> $1/_index.md
  done
}

makeIndexes() {
  makeIndexFile $1
    
  listDirectories $1 | while read x
  do
    makeIndexes $x;
  done
}

makeIndexes $ENTRY_DIR;
