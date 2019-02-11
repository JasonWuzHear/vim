# CSharp Language Server (OmniSharp)
## Installing the Server
1. Install mono: https://www.mono-project.com/download/stable/#download-lin
2. Install latest working version of omnisharp-roslyn server: `mkdir -p ~/.omnisharp && cd ~/.omnisharp && { curl -sL https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.32.10/omnisharp-linux-x64.tar.gz | tar xz ; cd -; }`
3. Add the following csls script to bin: `mkdir -p ~/bin/ && ln -sf ~/dotfiles/vim/scripts/csls ~/bin/csls && chmod +x ~/bin/csls`
