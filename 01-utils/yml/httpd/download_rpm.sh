# this file should be run only once if the rpm files in version control system are outdated
yumdownloader --resolve --destdir=/vagrant/yml/httpd/localrpm ca-certificates docker-ce gcc libffi-devel openssl python-backports python-backports-ssl_match_hostname python-devel python-pip  python-setuptools libselinux-python ntp
createrepo /vagrant/yml/httpd/localrpm
