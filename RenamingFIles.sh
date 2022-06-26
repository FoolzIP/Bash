# for I in *.mp4
# do 
#  mv "$I" Spongebob.Squarepants."$I"
# done

# for I in *.mp4
# do 
#  mv "$I" "Dragon Ball Z $I"
# done

find . -iname "*.mp4" -exec rename 's/.ARC//' '{}' \;

find . -iname "*.mp4" -exec rename 's/www.//' '{}' \;

find . -iname "*.mp4" -exec rename 's/WWW.//' '{}' \;

find . -iname "*.mp4" -exec rename 's/DvDrip//' '{}' \;

find . -iname "*.mp4" -exec rename 's/DVD_RIP_//' '{}' \;

find . -iname "*.mp4" -exec rename 's/DVDRip_//' '{}' \;

find . -iname "*.mp4" -exec rename 's/DVD_Rip-DivX//' '{}' \;

find . -iname "*.mp4" -exec rename 's/DvD-Rip//' '{}' \;

find . -iname "*.mp4" -exec rename 's/BRRip//' '{}' \;

find . -iname "*.mp4" -exec rename 's/_aXXo//' '{}' \;

find . -iname "*.mp4" -exec rename 's/[ENG]*.mp4/.mp4/' '{}' \;

find . -iname "*.m4v" -exec rename 's/.m4v/.mp4/' '{}' \;

find . -iname "*.mp4" -exec mv '{}' 'Dragon Ball Z {}' \;

find . -iname "*.mp4" -exec rename 's/Dragon.Ball.Z./Dragon Ball Z /' '{}' \;

find . -iname "*.mp4" -exec rename 's/ /_/' '{}' \;