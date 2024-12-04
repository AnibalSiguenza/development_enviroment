# Development enviroment

This is my personal development enviroment based on the use of VIM and oh-my-shell

# Instalation 

To install the dependencies simply run 

```sh
source ./install_enviroment.sh
```

Afterwards to use the configuration files create a link to the vimrc by

```sh
ln -s ~/git/configuration_files/vimrc ~/.vimrc
```

To run the oh-my-shell personal config create a .zshrc and add to the first line:

```sh
source {REPOSITOY_DIR}/configuration_files/zshrc
```

It is better to not directly link to not affect ad-hoc installations which modify the .zshrc such as anaconda

It was also needed to add the specific path to the clangd in the coc configuration by runnin :CocConfig and pasting
```json
{
    "clangd.path": "/usr/bin/clangd-14"
}
```

