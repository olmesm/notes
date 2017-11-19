#! /bin/sh

ENTRY_DIR=$1;

makeIndexFile() {
  echo "building Index for $1"

  ls $1 --ignore=_* | while read entry
    do
      FILE_PATH=`echo "$entry" | sed -e "s|$1|.|"`
      NAME=`echo $FILE_PATH | sed -e "s|\..*||"`
      
      # Replace spaces to URL encoded
      FILE_PATH=`echo "$entry" | sed -e "s| |%20|"`
      
      echo "- [$NAME](./$FILE_PATH)" >> $1/_index.md
  done

  # end with newline
  echo "" >> $1/_index.md
}

makeIndexFile $ENTRY_DIR;
