## Find UUID 
sudo blkid | grep ntfs
## Create directory for mounting
sudo mkdir /media/ext_NTFS_USB_Drive
## edit the fstab file
gksu gedit /etc/fstab
## Add this line with UUID and mount point you created 
UUID=68B6666D44D15DCB /media/ext_NTFS_Drive00 ntfs-3g permissions,auto 0 0
## now mount the drive 
sudo mount /media/ext_NTFS_Drive00
## may see err that already mounted, thats ok 