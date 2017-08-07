cd /mnt/DroboFS/Shares/DroboApps
mkdir sickrage
cd sickrage/
rm -r app
/mnt/DroboFS/Shares/DroboApps/git/bin/git clone https://git.sickrage.ca/SiCKRAGE/sickrage.git app
mkdir data var
mkdir data/Logs
cp /tmp/sickrage/Drobo/sickrage/service.sh .
