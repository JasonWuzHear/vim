syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding using spacebar
nnoremap <space> za

" Source all files in rc directory:
for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
	exe 'source' f
endfor
