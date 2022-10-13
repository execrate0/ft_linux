echo "Binutils pass 1"
LFS=/mnt/lfs

cd $LFS/sources
cd gcc-12.2.0/libstdc++-v3

mkdir -v build
cd build
../libstdc++-v3/configure \
 --host=$LFS_TGT \
 --build=$(../config.guess) \
 --prefix=/usr \
 --disable-multilib \
 --disable-nls \
 --disable-libstdcxx-pch \
 --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/12.2.0
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{stdc++,stdc++fs,supc++}.la

cd ..
rm -rf build
