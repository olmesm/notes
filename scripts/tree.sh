#! /bin/sh

DOCKER_COMMAND="docker run
  --rm -it
  -v $(pwd)/notes:/notes
  -v $(pwd)/scripts:/scripts:ro
  alpine
  sh /scripts/make-tree.sh";

if [ $(uname -s) = "Linux" ];
  then sudo $DOCKER_COMMAND
  else $DOCKER_COMMAND
fi
