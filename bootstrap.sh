sudo apt-get update
sudo apt-get upgrade

echo "Preparing Docker installation"
echo ""
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get --assume-yes  install docker-ce docker-ce-cli containerd.io

echo "Docker installation complete"
echo ""
echo "Install python dev requirements"

sudo apt-get install -y build-essential
sudo apt-get install -y libbz2-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev tk-dev liblzma-dev
sudo apt-get install -y python3-dev python3-venv

echo "Python requirements installed"

sudo apt-get install -y silversearcher-ag
