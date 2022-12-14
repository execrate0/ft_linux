echo >&2 "MPC"

set -e

rm -rf mpc-1.2.1
tar -xvf mpc-1.2.1.tar.gz
cd mpc-1.2.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.2.1

make
make html
# make check
make -j1 install
make install-html
