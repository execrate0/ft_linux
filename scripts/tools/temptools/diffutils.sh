echo >&2 "Diffutils"

set -e

rm -rf diffutils-3.8
tar -xvf diffutils-3.8.tar.xz
cd diffutils-3.8

./configure --prefix=/usr --host=$LFS_TGT

make
make -j1 DESTDIR=$LFS install
