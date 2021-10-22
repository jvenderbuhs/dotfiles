set autoread
set number
set history=500
set ruler
set hlsearch
syntax enable
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
set cursorline
hi CursorLine cterm=NONE ctermbg=8 guibg=8
hi DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
hi DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
hi DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
hi DiffText   cterm=BOLD ctermfg=NONE ctermbg=23
set guicursor=
set wrap!

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

map } :tabm +<CR>
map { :tabm -<CR>
map ] gt
map [ gT
map N :tabnew<CR>
map H :cprev<CR>
map L :cnext<CR>
map <C-y> "+y

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/ag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zacanger/angr.vim'
Plug 'haishanh/night-owl.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'mechatroner/rainbow_csv'
Plug 'xolox/vim-misc'
Plug 'unblevable/quick-scope'
Plug 'kamykn/spelunker.vim'
Plug 'ryanoasis/vim-devicons' " always last
let g:airline_powerline_fonts = 1
call plug#end()

map <C-[> :CtrlPClearCache<CR>
map B :Gblame<CR>

let g:ctrlp_max_files=0
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
  \ 'AcceptSelection("t")': ['<cr>'],
  \ }

let g:airline_theme='angr'
colorscheme night-owl

set wildignore+=*/tmp/*,*.so,*.swp,*.sql,*.zip,*.html,*/site-images/*,*/node_modules/*,*/javascript/*/lib/*

autocmd BufWritePre * :%s/\s\+$//e

" Manage auto-indenting
set nocindent
set nosmartindent
set autoindent
set indentexpr=
filetype indent off
filetype plugin indent off

" Manage Spell Check, spelunker (Zl to correct a word, Zg to add a word, ZN jump to next mis-spelled word)
set nospell

