#! /usr/bin/env bash 

ls '/media/ext_NTFS_Drive00/TV Shows'   > /home/xander/ADZ/Bash/shows01.txt
ls '/media/ext_NTFS_Drive01/Shows/'     > /home/xander/ADZ/Bash/shows02.txt

readarray -t file01 </home/xander/ADZ/Bash/shows01.txt
readarray -t file02 </home/xander/ADZ/Bash/shows02.txt

echo '' > toDelete.txt 

for i in ${file01[@]}; 
do 
    echo $i
    if [[ "${file02[*]}" =~ " $i " ]]; 
        then
        echo $i >> toDelete.txt
    fi 
done
