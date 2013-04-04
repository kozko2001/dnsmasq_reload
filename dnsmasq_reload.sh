kill -HUP `ps ax | grep dnsmasq | grep -v grep | awk '{ print $1 }'`
