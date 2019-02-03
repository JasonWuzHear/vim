setlocal tabstop=4
setlocal softtabstop=4
setlocal autoindent
setlocal smarttab
setlocal fileformat=unix
setlocal shiftwidth=4

let b:ale_fixers = ['uncrustify']
let b:ale_c_uncrustify_options = '-l CS'
