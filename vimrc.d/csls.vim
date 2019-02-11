if executable('csls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'csls',
        \ 'cmd': {server_info->['csls']},
        \ 'whitelist': ['csharp'],
        \ })
endif
