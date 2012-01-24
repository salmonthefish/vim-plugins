set enc=utf-8 

let s:os_type = system("uname")
if s:os_type =~ "^Darwin"
  set gfn=Menlo:h16
  set fuopt+=maxhorz " grow to max horizontal width in fullscreen mode
elseif s:os_type =~ "^Linux"
  set gfn=Monospace\ 14
endif

" Theme
let g:solarized_degrade="1"
set background=dark
colorscheme solarized

" Make Save leave edit mode
" macmenu File.Save  key=<nop>
map <D-s> :w<CR>
imap <D-s> <ESC>:w<CR>

" GUI settings
set guioptions+=TlRLrb
set guioptions-=TlRLrb

