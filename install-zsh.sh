# wget -O - https://raw.githubusercontent.com/madaraszbalazs/install/master/install-zsh.sh | bash

# Install tilix and zsh
sudo add-apt-repository ppa:webupd8team/terminix
sudo apt-get update
sudo apt-get install tilix zsh python3-pip
sudo chsh -s /usr/bin/zsh

# Install Ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install the Powerlevel9k Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

mkdir /home/$USER/Downloads/nerd-fonts
git clone https://github.com/ryanoasis/nerd-fonts.git /home/$USER/Downloads/nerd-fonts
/home/$USER/Downloads/nerd-fonts/install.sh
rm -rf /home/$USER/Downloads/nerd-fonts

mkdir -p /home/$USER/Downloads/zshinstall
git clone https://gitlab.com/balazs.madarasz/install.git /home/$USER/Downloads/zshinstall

dconf load /com/gexperts/Tilix/ < /home/$USER/Downloads/zshinstall/tilix.dconf

cp /home/$USER/Downloads/zshinstall/.zshrc /home/$USER/
