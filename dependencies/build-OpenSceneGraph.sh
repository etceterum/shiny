#!/bin/sh
CURRENT=`pwd`
SOURCE=$CURRENT/OpenSceneGraph
DIST=$CURRENT/_dist/OpenSceneGraph

cd $SOURCE
cmake -DCMAKE_INSTALL_PREFIX:PATH=$DIST .
make
make install
cd $CURRENT
