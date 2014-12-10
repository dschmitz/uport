#! /bin/bash

SUBVOL=$1

# umounting subvolume
umount $SUBVOL

# deleting subvolume
btrfs subvolume delete $SUBVOL

# removing entry from fstab
sed -i '/$SUBVOL/d' /etc/fstab
