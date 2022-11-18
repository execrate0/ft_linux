#!/bin/bash

cd sources
tar -xvf ncurses-6.3.tar.gz
cd ncurses-6.3

# Start building
./configure --prefix=/usr \
			--with-shared \
			--enable-widec

make
make install DESTDIR=$OS
# Build :D

cd ..
rm -rf ncurses-6.3
