#! /bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

install_vim () {
    echo "Installing VIM"
    (cd ${SCRIPT_DIR}/vim/src ; sudo make)
    (cd ${SCRIPT_DIR}/vim/src ; sudo make install)
}

install_oh_my_shell() {
    sudo apt-get install zsh
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
    chsh -s `which zsh`
}

install_fzf () {
    echo "Installing FZF"
    ${SCRIPT_DIR}/fzf/install
}

install_vim
install_oh_my_shell
install_fzf 
