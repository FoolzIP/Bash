#! /usr/bin/env bash 

cd /media/ext_NTFS_Drive01/Shows/

readarray -t deleteFile01 </home/xander/ADZ/Bash/toDelete.txt

for i in ${deleteFile01[@]}; 
do 
    echo 'Removing '$i
    rm $i 
    if [[ $? == 1 ]]; 
        then
        rm -rf $i 
    fi 
done

