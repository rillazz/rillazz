#zsh
sudo apt install zsh
chsh -s $(which zsh)
cp .zshrc ~

#oh-my-zsh
if ! test -d $HOME/.oh-my-zsh; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


#powerlevel10k
if ! test -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

cp .p10k.zsh ~

#tmux
sudo apt install tmux
cp .tmux.conf ~


cp -r nvim .config/

source .zshrc
