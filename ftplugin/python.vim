setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal smarttab

let b:ale_linters = ['pyls']
let b:ale_fixers = ['yapf', 'isort']
