# vim
vim config
```
git submodule init
git submodule update

ln -sfn ~/dotfiles/vim ~/.vim
\ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
```

## important configuration for omnisharp vim:
Omnisharp-vim tries to manually translate wsl-paths with a '/mnt/' prefix. We can hotfix this for now by doing:
1. Follow the omnisharp vim instructions for wsl at: https://github.com/OmniSharp/omnisharp-vim#windows-subsystem-for-linux-wsl.
2. `cd ~/.vim/pack/linting/start/omnisharp-vim/autoload/OmniSharp/`
3. Change line 64 in util.vim from `let prefix = '^/mnt/'` to `let prefix = '^/'`.
4. Pray that everything works.
