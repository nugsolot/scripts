This is a service script to control funning sickrage on the Drobo.

I am running this in an 8 Bay model on the latest firmware as of today (12-12-16)

Outline of Steps to install Sickrage on these before you use this to manage the serive:

(Drobo Dashboard)
1. Install SSH DroboApp for access into the Drobo (Admin is the user notice it's a captital)
2. Install GIT DroboApp
3. Install Python 2x DroboApp 
(Commands Below do these)
4. Get the scripts in scripts/sickrage and save to /tmp
5. Run preflight.sh to checkout current sickrage version and install service controll script
```
cd /tmp
rm -rf /tmp/sickrage
/mnt/DroboFS/Shares/DroboApps/git/bin/git clone https://github.com/nugsolot/scripts/ sickrage
cd sickrage/Drobo/sickrage/
./preflight.sh
cd /mnt/DroboFS/Shares/DroboApps/sickrage/
./service.sh start
```
6. Control the script with service.sh in the sickrage folder in ~/Shares/DroboApps/sickrage
```
./service.sh start
./service.sh stop
./service.sh status
```

Thanks to Steven on Drobo Forums for the service.sh script
http://www.drobospace.com/forums/showthread.php?tid=142812

7. Not working?  Look at the log file.
```
cd /tmp/DroboApps/sickrage/
tail -f log.txt
````

