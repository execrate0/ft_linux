echo >&2 "Zlib"
rm -rf zlib-1.2.13
tar -xvf zlib-1.2.13.tar.gz
cd zlib-1.2.13

./configure --prefix=/usr

make
# make check
make install

rm -fv /usr/lib/libz.a
