echo >&2 "Libpipeline"

set -e

rm -rf libpipeline-1.5.6
tar -xvf libpipeline-1.5.6.tar.gz
cd libpipeline-1.5.6

./configure --prefix=/usr

make
# make check
make -j1 install
