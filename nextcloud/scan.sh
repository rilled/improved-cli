#!/bin/bash

sudo chown -R www-data:www-data /mnt/ncdata
sudo -u www-data php /var/www/nextcloud/occ files:scan --all


rsync -avzhe --progress

/live/silver/archives/archiveX/programs/share/fallout4
