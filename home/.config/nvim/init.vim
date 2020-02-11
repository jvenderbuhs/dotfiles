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
set guicursor=
set wrap!

map } :tabm +<CR>
map { :tabm -<CR>
map ] gt
map [ gT
map N :tabnew<CR>
map H :cprev<CR>
map L :cnext<CR>
map <C-[> :CtrlPClearCache<CR>
map <C-n> :NERDTreeToggle<CR>
map B :Gblame<CR>
map <C-y> "*y
map <C-j> :%!jq '.'<CR>

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/ag'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'zacanger/angr.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mechatroner/rainbow_csv'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'unblevable/quick-scope'
Plugin 'ryanoasis/vim-devicons' " always last
let g:airline_powerline_fonts = 1

call vundle#end()

let g:ctrlp_max_files=0
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
  \ 'AcceptSelection("t")': ['<cr>'],
  \ }

let g:airline_theme='angr'

set wildignore+=*/tmp/*,*.so,*.swp,*.sql,*.zip,*.html,*/site-images/*,*/node_modules/*,*/javascript/*/lib/*

autocmd BufWritePre * :%s/\s\+$//e

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

hi DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
hi DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
hi DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
hi DiffText   cterm=BOLD ctermfg=NONE ctermbg=23
