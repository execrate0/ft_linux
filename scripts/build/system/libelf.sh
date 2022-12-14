echo >&2 "Libelf from Elfutils"

set -e

rm -rf elfutils-0.187
tar -xvf elfutils-0.187.tar.bz2
cd elfutils-0.187

./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy

make
# make check
make -j1 -C libelf install

install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
