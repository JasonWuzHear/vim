# vim
vim config
```
git submodule init
git submodule update

ln -sfn ~/dotfiles/vim ~/.vim
\ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

mkdir -p ~/.omnisharp/omnisharp.http-linux-x64 
\&& cd ~/.omnisharp/omnisharp.http-linux-x64 
\&& { curl -sL https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.32.1/omnisharp-linux-x64.tar.gz | tar xz ; cd -; }
```
