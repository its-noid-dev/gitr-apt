#!/bin/bash
set -e
VERSION=$(grep "^Version:" pkg/DEBIAN/control | awk '{print $2}')
rm -rf /tmp/gitr-build && mkdir -p /tmp/gitr-build/DEBIAN /tmp/gitr-build/usr/bin
cp pkg/DEBIAN/control /tmp/gitr-build/DEBIAN/control
cp src/gitr /tmp/gitr-build/usr/bin/gitr && chmod +x /tmp/gitr-build/usr/bin/gitr
mkdir -p dist && dpkg-deb --build /tmp/gitr-build "dist/gitr_${VERSION}_all.deb"
apt-ftparchive packages dist | gzip -9 > dist/Packages.gz
echo "Done! -> dist/gitr_${VERSION}_all.deb"
