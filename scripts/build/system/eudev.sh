echo >&2 "Eudev"

set -e

rm -rf eudev-3.2.11
tar -xvf eudev-3.2.11.tar.gz
cd eudev-3.2.11

./configure --prefix=/usr           \
            --bindir=/usr/sbin      \
            --sysconfdir=/etc       \
            --enable-manpages       \
            --disable-static

make

# mkdir -pv /usr/lib/udev/rules.d
# mkdir -pv /etc/udev/rules.d
# make check

make -j1 install

tar -xvf ../udev-lfs-20171102.tar.xz
make -j1 -f udev-lfs-20171102/Makefile.lfs install

udevadm hwdb --update
