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


" OmniSharp 
" https://github.com/OmniSharp/omnisharp-vim#example-vimrc
filetype plugin on
let g:OmniSharp_timeout = 5
set completeopt=longest,menuone,preview
set previewheight=5
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_highlight_types = 1

augroup omnisharp_commands
	autocmd!
	autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
	autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
	autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>
	autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
	autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
	autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>
	autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
	autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>
"""
