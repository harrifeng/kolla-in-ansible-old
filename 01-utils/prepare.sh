chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y epel-release yum-utils createrepo
sudo yum install -y /vagrant/yml/httpd/localrpm/docker-ce-17.06.0.ce-1.el7.centos.x86_64.rpm
yumdownloader --resolve --destdir=/vagrant/yml/httpd/localrpm docker python-pip libffi-devel gcc openssl libselinux-python ca-certificates ntp python-devel container-selinux libseccomp libtool-ltdl
createrepo /vagrant/yml/httpd/localrpm
sudo yum install -y python-devel python-pip gcc
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
