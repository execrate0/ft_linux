echo "Installing missing packets"
apt install bison texinfo -y

echo "Linking /bin/sh to bash"
ln -sf bash /bin/sh