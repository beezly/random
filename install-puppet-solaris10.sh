yes | pkgadd -G -d http://mirrors.shef.ac.uk/opencsw/pkgutil-`uname -p`.pkg all
mv /opt/csw/etc/pkgutil.conf /opt/csw/etc/pkgutil.conf.orig
sed -e 's/^#pkgaddopts=-G -S$/pkgaddopts=-G/g' < /opt/csw/etc/pkgutil.conf.orig > /opt/csw/etc/pkgutil.conf.inter
sed -e 's/^#mirror=.*/mirror=http:\/\/mirrors.shef.ac.uk\/opencsw\/unstable/g' < /opt/csw/etc/pkgutil.conf.inter > /opt/csw/etc/pkgutil.conf
rm -f /opt/csw/etc/pkgutil.conf.orig /opt/csw/etc/pkgutil.conf.inter
/opt/csw/bin/pkgutil -y -i puppet3
