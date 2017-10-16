#!/bin/bash
docker run --rm -it -v `pwd`:/u1 -p 8888:8888 jp/python-ml2 $*