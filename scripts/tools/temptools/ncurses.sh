echo >&2 "Ncurses"

set -e

rm -rf ncurses-6.3
tar -xvf ncurses-6.3.tar.gz
cd ncurses-6.3

sed -i s/mawk// configure

rm -rf   build
mkdir -v build

pushd build
  ../configure
  make -C include
  make -C progs tic
popd

./configure --prefix=/usr                \
            --host=$LFS_TGT              \
            --build=$(./config.guess)    \
            --mandir=/usr/share/man      \
            --with-manpage-format=normal \
            --with-shared                \
            --without-normal             \
            --with-cxx-shared            \
            --without-debug              \
            --without-ada                \
            --disable-stripping          \
            --enable-widec

make
make -j1 DESTDIR=$LFS TIC_PATH=$(pwd)/build/progs/tic install
echo "INPUT(-lncursesw)" > $LFS/usr/lib/libncurses.so
