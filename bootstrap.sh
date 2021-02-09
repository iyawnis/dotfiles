echo "Update aptget"

sudo apt-get update
sudo apt-get upgrade

echo "Preparing Docker installation"
echo ""
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo apt-get --assume-yes  install docker-ce docker-ce-cli containerd.io

echo "Docker installation complete"
echo ""

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo apt-get install -y maven

echo "Install python dev requirements"

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

sudo apt-get install -y python3.7 python3.7-dev python3-venv python3-tk libsnappy-dev r-base python3-pip

pip3 install --upgrade pip
pip install --upgrade pip
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 10
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 10
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10

python -m pip install pipenv

echo "Python requirements installed"

sudo apt-get install -y silversearcher-ag

