set timeoutlen=2000
set pastetoggle=<F6>
set scrolloff=3
set clipboard=unnamed
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:GeeknoteExplorerWidth=35
"autocmd FileType geeknote setlocal nonumber

"PENCIL stuff
"let g:pencil#wrapModeDefault = 'soft'   " or 'soft'
let g:pencil#textwidth = 80
let g:airline_section_x = '%{PencilMode()}'
"set nocompatible
"filetype plugin indent on
"let g:pencil#autoformat = 1
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md,geeknote call pencil#init()
augroup END

augroup textobj_sentence
  autocmd!
  autocmd FileType markdown,geeknote call textobj#sentence#init()
augroup END

augroup vim_voom
  autocmd!
  autocmd FileType taskpaper :Voom taskpaper
augroup END


let g:NERDTreeWinPos = "left"
