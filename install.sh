if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

cp com.userzoom.hosts.plist /Library/LaunchDaemons/
chown root /Library/LaunchDaemons/com.userzoom.hosts.plist
chmod 644 /Library/LaunchDaemons/com.userzoom.hosts.plist

cp dnsmasq_reload.sh /usr/local/bin


launchctl load /Library/LaunchDaemons/com.userzoom.hosts.plist
