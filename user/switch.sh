echo "Switching to user lfs"

sudo -iu lfs

source .bash_profile

export MAKEFLAGS='-j4'
