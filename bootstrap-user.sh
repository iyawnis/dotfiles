
if [ $HOME != "/home/vagrant" ]; then
  echo "Expected HOME ($HOME) to be /home/vagrant"
fi

curl https://pyenv.run | bash


echo "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv init -)\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv virtualenv-init -)\"" >> $HOME/.bashrc

source $HOME/.bashrc

echo "pyenv installation complete"
