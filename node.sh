# Node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Git v2
yum install -y https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm \
&& yum install -y git \
&& yum -y clean all \
&& rm -rf /var/cache
