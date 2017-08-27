chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y epel-release yum-utils createrepo
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
echo "get the local repo"
yumdownloader --resolve --destdir=/vagrant/yml/httpd/localrpm docker-ce \
              python-pip libffi-devel gcc openssl libselinux-python ca-certificates \
              ntp python-devel container-selinux libseccomp libtool-ltdl device-mapper-persistent-data lvm2
createrepo /vagrant/yml/httpd/localrpm
sudo yum install -y python-devel python-pip gcc
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
