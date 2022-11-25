echo >&2 "Groff"

set -e

rm -rf groff-1.22.4
tar -xvf groff-1.22.4.tar.gz
cd groff-1.22.4

PAGE=A4 ./configure --prefix=/usr

make -j1
make -j1 install
