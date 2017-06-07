# vimrc
Install your Vim environment: 

```bash
cd ~
git clone https://github.com/namdinh95/vimrc.git ~/.vim
ln -s .vim/vimrc ~/.vimrc
ln -s .vim/gvimrc ~/.gvimrc
cd .vim
git submodule update --init
```

How to install a plugin: 

```bash
cd ~/.vim
git submodule add <.git link> bundle/<plugin-name>
git add .
git commit -m "Added <plugin-name>"
```

Upgrade all plugins:

```bash
git submodule foreach git pull origin master
```

For more information, visit: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/