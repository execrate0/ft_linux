echo >&2 "Bash"

set -e

rm -rf bash-5.1.16
tar -xvf bash-5.1.16.tar.gz
cd bash-5.1.16

./configure --prefix=/usr                      \
            --docdir=/usr/share/doc/bash-5.1.16 \
            --without-bash-malloc              \
            --with-installed-readline

make

# chown -Rv tester .
# su -s /usr/bin/expect tester << EOF
# set timeout -1
# spawn make tests
# expect eof
# lassign [wait] _ _ _ value
# exit $value
# EOF

make -j1 install
