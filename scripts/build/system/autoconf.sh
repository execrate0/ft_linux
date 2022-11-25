echo >&2 "Autoconf"

set -e

rm -rf autoconf-2.71
tar -xvf autoconf-2.71.tar.xz
cd autoconf-2.71

./configure --prefix=/usr

make
# make check
make -j1 install
