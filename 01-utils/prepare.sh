chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y epel-release yum-utils createrepo
yumdownloader --resolve --destdir=/vagrant/yml/httpd/localrpm python-pip libffi gcc openssl libselinux-python ca-certificates ntp python-devel container-selinux libseccomp libtool-ltdl
createrepo /vagrant/yml/httpd/localrpm
sudo yum install -y python-devel python-pip gcc
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
