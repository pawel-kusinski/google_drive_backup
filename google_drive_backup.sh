#!/bin/bash

MOUNT_DIR=~/Desktop/tmp_gdrive
BACKUP_DIR=~/Desktop/gdrive_backup
DATE=$(date +%Y-%m-%d_%H:%M)

mkdir $MOUNT_DIR
google-drive-ocamlfuse $MOUNT_DIR
mkdir $BACKUP_DIR/$DATE
cp -rv $MOUNT_DIR/* $BACKUP_DIR/$DATE
fusermount -u $MOUNT_DIR
rmdir $MOUNT_DIR
