echo >&2 "Using root user"

set -e

source scripts/setup/fix_kali.sh

LFS=/mnt/lfs

source scripts/setup/partitions.sh
source scripts/setup/folder.sh >/dev/null

source scripts/tools/sources.sh >/dev/null
source scripts/setup/user/create.sh >/dev/null
