echo >&2 "Groff"
rm -rf groff-1.22.4
tar -xvf groff-1.22.4.tar.gz
cd groff-1.22.4

PAGE=A4 ./configure --prefix=/usr

make
make install
