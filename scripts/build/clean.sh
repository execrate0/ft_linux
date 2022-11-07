echo >&2 "Cleaning Up"

rm -rf /tmp/*

find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf

userdel -r tester
