# this file should be run only once if the rpm files in version control system are outdated
sudo yum install -y creatrepo yum-utils device-mapper-persistent-data lvm2

#sudo yum-config-manager \
#    --add-repo \
#    https://download.docker.com/linux/centos/docker-ce.repo

yumdownloader --resolve --destdir=./localrpm ca-certificates docker-ce gcc libffi-devel openssl python-backports python-backports-ssl_match_hostname python-devel python-pip  python-setuptools libselinux-python ntp device-mapper-persistent-data lvm2

createrepo ./localrpm
