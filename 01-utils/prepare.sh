chmod 600 /home/vagrant/.ssh/id_rsa
sudo yum install -y yum-utils
yumdownloader --resolve --destdir=/vagrant/yml/httpd/localrpm
python-pip \
    libffi \
    gcc \
    openssl \
    libselinux-python \
    ca-certificates \
    ntp \
    python-devel \
    container-selinux \
    libseccomp \
    libtool-ltdl
createrepo /vagrant/yml/httpd/localrpm
sudo yum install -y epel-release
sudo yum install -y python-devel python-pip gcc createrepo
sudo pip install ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com
