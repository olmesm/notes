#! /bin/sh

DOCKER_COMMAND="docker run
  --rm -it
  -v $(pwd)/notes:/notes
  -v $(pwd)/scripts:/scripts:ro
  alpine
  sh /scripts/make-tree.sh";

if [ $(uname -s) = "Linux" ];
  then 
    echo "\n\nYou'll need to enter your password to run docker\n";
    sudo $DOCKER_COMMAND
  else $DOCKER_COMMAND
fi
