
if [ $HOME != "/home/vagrant" ]; then
  echo "Expected HOME ($HOME) to be /home/vagrant"
fi

echo "Add user vagrant to docker group"

sudo usermod -aG docker $USER
curl https://pyenv.run | bash


echo "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv init -)\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv virtualenv-init -)\"" >> $HOME/.bashrc

source $HOME/.bashrc

echo "pyenv installation complete"

echo "Setup dotfiles"
cd
mkdir -p ~/.vim/colors/
git clone https://github.com/latusaki/dotfiles.git
cp dotfiles/.vimrc ~/.vimrc
cp dotfiles/solarized.vim ~/.vim/colors/.

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd
cp dotfiles/.pythonrc ~/.pythonrc

echo "Dotfiles installed"
