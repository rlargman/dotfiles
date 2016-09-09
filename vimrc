call pathogen#infect()
"Color Scheme"
syntax enable
set background=dark
colorscheme solarized

"Tab width"
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
au BufWinEnter,BufNewFile * silent tab

"Trailing whitespace"
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Line length"
set textwidth=80
set colorcolumn=81
au BufEnter * set colorcolumn=81

set encoding=utf-8

" Search for current word and replace with given text for files in arglist.
function! Replace(bang, searchAndReplace)
  let flag = 'ge'
  if !a:bang
    let flag .= 'c'
  endif
  let split = split(a:searchAndReplace, ',')
  "let search = '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
  "let replace = escape(a:replace, '/\&~')
  let search = escape(split[0], '/\&~')
  let replace = escape(split[1], '/\&~')
  execute 'argdo %s/' . search . '/' . replace . '/' . flag
endfunction
command! -nargs=1 -bang Replace :call Replace(<bang>0, <q-args>)
nnoremap <Leader>r :call Replace(0, input('Replace '.expand('<cword>').' with: '))<CR>
