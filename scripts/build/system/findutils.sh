echo >&2 "Findutils"

set -e

rm -rf findutils-4.9.0
tar -xvf findutils-4.9.0.tar.xz
cd findutils-4.9.0

case $(uname -m) in
    i?86)   TIME_T_32_BIT_OK=yes ./configure --prefix=/usr --localstatedir=/var/lib/locate ;;
    x86_64) ./configure --prefix=/usr --localstatedir=/var/lib/locate ;;
esac

make

# chown -Rv tester .
# su tester -c "PATH=$PATH make check"

make -j1 install
