# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m   h   dom   mon   dow   command
  *   4   *     *     *     /bin/bash reboot                                   &> /dev/null
 */1  *   *     *     *     chown -R xander:plex /media/ext_NTFS_Drive01
 */1  *   *     *     *     chmod -R 777 /media/ext_NTFS_Drive01
 */1  *   *     *     *     chown -R xander:plex /media/ext_NTFS_Drive00
 */1  *   *     *     *     chmod -R 777 /media/ext_NTFS_Drive00
 37   3   *     *     *     apt update                                         &> /dev/null
 35   3   *     *     *     apt-get update                                     &> /dev/null
 41   3   *     *     *     apt upgrade -y                                     &> /dev/null
 40   3   *     *     *     apt-get upgrade -y                                 &> /dev/null
 30   2   *     *     2     /home/xander/update-plex.sh                        &> /dev/null
@reboot                     /bin/bash systemctl start plexmediaserver.service  &> /dev/null
@reboot                     /bin/bash systemctl start openvpn                  &> /dev/null
