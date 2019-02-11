(instructions taken from https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Python)
## Installing the Server
1. `pip install 'python-language-server[all]'`
2. uninstall any of the optional packages from the python-language-server you don't want.

## Registering the Server (vimrc)
```
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ 'workspace_config': {'pyls': {'plugins': {'pydocstyle': {'enabled': v:true}}}}
        \ })
endif
```
