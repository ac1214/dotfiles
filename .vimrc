
"Plugin installer
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

call plug#end()



"set theme
colorscheme onedark


"set lightline theme
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

"Auto open nerd tree on vim open
"autocmd vimenter * NERDTree

"Bracket matching
"ino " ""<left>
"ino ' ''<left>
"ino ( ()<left>
"ino [ []<left>
"ino { {}<left>


ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap	{  {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"

"syntax highlighting
syntax on

"autoindent
set autoindent

"set font


"open lightline on open
set laststatus=2

"add line numbers
set number
