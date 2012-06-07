#!/bin/sh
#http://www.mkyong.com/mongodb/how-to-install-mongodb-on-ubuntu/

cat <<EOF > /etc/apt/sources.list
deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen
EOF

apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
apt-get -qy update
apt-get -qy --force-yes install mongodb-10gen
