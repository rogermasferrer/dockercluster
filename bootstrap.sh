# Docker pre-requisits
apt-get update
#apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get update
#apt-get purge lxc-docker
#apt-cache policy docker-engine
apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

# Docker install
apt-get install -y docker-engine

# Docker start daemon
#service docker start

# Docker status
#docker run hello-world
