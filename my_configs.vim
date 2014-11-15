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

"PENCIL stuff
let g:pencil#wrapModeDefault = 'hard'   " or 'soft'
let g:pencil#textwidth = 74
let g:airline_section_x = '%{PencilMode()}'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
"  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

"let g:pencil#autoformat = 1
