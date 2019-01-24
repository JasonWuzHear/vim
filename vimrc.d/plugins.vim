" NERDTree
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
"""


" ALE
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_fix_on_save = 1
"""


" OmniSharp
" working with ALE:
" https://github.com/OmniSharp/omnisharp-vim#optional-install-ale
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" working with WSL:
" https://github.com/OmniSharp/omnisharp-vim#windows-subsystem-for-linux-wsl
let g:OmniSharp_server_path = '/mnt/c/OmniSharp/omnisharp.http-win-x64/OmniSharp.exe'
let g:OmniSharp_translate_cygwin_wsl = 1

" OmniSharp won't work without this setting
filetype plugin on

" Timeout in seconds to wiat for a response from the server
let g:OmniSharp_timeout = 5

" Don't autoselect first omnicomplete option, show options even if there is
" only one (so the preview documentation is accessible). Remove 'preview' if
" you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview

" Set desired preview windows height for viewing documentation. You might also
" want to look at the echodoc plugin.
set previewheight=5
"""


" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
"""
