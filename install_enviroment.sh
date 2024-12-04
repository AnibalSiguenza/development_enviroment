#! /bin/bash

sudo apt update

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

install_vim () {
    echo "Installing VIM"
    (cd ${SCRIPT_DIR}/vim/src ; sudo make)
    (cd ${SCRIPT_DIR}/vim/src ; sudo make install)
}

install_vim_plug () {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_nodejs () {
    curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -\n
    sudo apt-get install -y nodejs\n
}

install_clang_tools () {
    sudo apt install clang-format
    wget https://apt.llvm.org/llvm.sh
    chmod +x llvm.sh
    sudo ./llvm.sh  14
    sudo apt install clangd-14
    rm ./llvm.sh
}

install_oh_my_shell() {
    echo "Installing OH-MY-SHELL"
    sudo apt-get install zsh
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
    chsh -s `which zsh`
}

install_fzf () {
    echo "Installing FZF"
    ${SCRIPT_DIR}/fzf/install
}

install_tmux () {
    echo "Installing TMUX"
    sudo apt-get install tmux
}

install_vim
install_vim_plug
install_nodejs
install_clang_tools  
install_oh_my_shell
install_fzf 
install_tmux 
