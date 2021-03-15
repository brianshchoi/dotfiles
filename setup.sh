# Install oh-my-zsh, powerlevel10k
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Symlink all the files 
# zsh
ln -s ~/dotfiles/zshrc ~/.zshrc

# Alacritty
mkdir ~/.config/alacritty
ln -s ~/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml

