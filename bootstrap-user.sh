echo $HOME
cd $HOME

sudo usermod -aG docker $USER


echo "Setup dotfiles"
cd
mkdir -p $HOME/.vim/colors/
git clone https://github.com/latusaki/dotfiles.git
cp dotfiles/.vimrc $HOME/.vimrc
cp dotfiles/solarized.vim $HOME/.vim/colors/.


cd
cp dotfiles/.pythonrc $HOME/.pythonrc
cp dotfiles/.gitconfig $HOME/.gitconfig

echo "Dotfiles installed"
