echo $HOME
cd $HOME

sudo usermod -aG docker $USER

curl https://pyenv.run | bash

echo "export PATH=\"$HOME/.pyenv/bin:\$PATH\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv init -)\"" >> $HOME/.bashrc
echo "eval \"\$(pyenv virtualenv-init -)\"" >> $HOME/.bashrc

source $HOME/.bashrc

echo "pyenv installation complete"

echo "Setup dotfiles"
cd
mkdir -p $HOME/.vim/colors/
git clone https://github.com/latusaki/dotfiles.git
cp dotfiles/.vimrc $HOME/.vimrc
cp dotfiles/solarized.vim $HOME/.vim/colors/.

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd
cp dotfiles/.pythonrc $HOME/.pythonrc
cp dotfiles/.gitconfig $HOME/.gitconfig

echo "Dotfiles installed"
