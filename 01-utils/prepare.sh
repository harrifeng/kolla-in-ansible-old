chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y epel-release
sudo yum install -y python-devel python-pip gcc yum-utils createrepo
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
yumdownloader --resolve --destdir=/vagrant/yml/httpd/yum python-pip libffi gcc openssl libselinux-python ca-certificates ntp python-devel
createrepo /vagrant/yml/httpd/yum
