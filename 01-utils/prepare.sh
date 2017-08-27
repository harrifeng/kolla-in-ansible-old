chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y epel-release
sudo yum install -y yum-utils createrepo
createrepo /vagrant/yml/httpd/localrpm
sudo yum install -y python-devel python-pip gcc
echo "pip----------->"
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
