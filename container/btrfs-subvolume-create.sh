#! /bin/bash

mkdir -p /btrfs/pool
SUBVOL=/btrfs/pool/$1

btrfs subvolume create $SUBVOL

# determine UUID of parent volume
UUID=$(blkid $2 | grep -o '[0-9a-fA-F]\{8\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{12\}' | head -1)

# add subvolume to fstab and mount it
echo "UUID=$UUID $SUBVOL  btrfs	defaults,noatime,discard,subvol=@$SUBVOL 0	2" >> /etc/fstab
echo $SUBVOL
mount $SUBVOL
