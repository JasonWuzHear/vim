syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding using spacebar
nnoremap <space> za


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
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
"""
