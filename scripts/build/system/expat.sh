echo >&2 "Expat"
rm -rf expat-2.4.8
tar -xvf expat-2.4.8.tar.xz
cd expat-2.4.8

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.4.8

make
# make check
make install

install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.4.8
