execute pathogen#infect()
syntax on
filetype plugin indent on
"Color Theme
colorscheme monokai 
"Number on lines
set relativenumber
"Remap general keys
"Esc to jh
inoremap jk <ESC>
"Leader to space
let mapleader = "<Space>"
"NERDTree 
"
"Make it pretier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"
"Remap Keys
map <C-n> :NERDTreeToggle<CR>
map <C-m>  :NERDTreeFind<CR>
"Auto open tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Auto close tree when open file
let NERDTreeQuitOnOpen = 1
"Auto close when no other left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
