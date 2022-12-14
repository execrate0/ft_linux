echo >&2 "File"

set -e

rm -rf file-5.42
tar -xvf file-5.42.tar.gz
cd file-5.42

rm -rf   build
mkdir -v build

pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd

./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)

make FILE_COMPILE=$(pwd)/build/src/file
make -j1 DESTDIR=$LFS install

rm -v $LFS/usr/lib/libmagic.la
