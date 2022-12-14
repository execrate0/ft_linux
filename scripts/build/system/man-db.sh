echo >&2 "Man-DB"

set -e

rm -rf man-db-2.10.2
tar -xvf man-db-2.10.2.tar.xz
cd man-db-2.10.2

./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.10.2 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap             \
            --with-systemdtmpfilesdir=            \
            --with-systemdsystemunitdir=

make
# make check
make -j1 install
