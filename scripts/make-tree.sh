#! /bin/sh

apk add -U tree;
rm /notes/_tree.*;
tree --dirsfirst -I _* /notes > /notes/_tree.md;