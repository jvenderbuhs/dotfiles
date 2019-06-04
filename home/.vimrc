set autoread
set number
set history=500
set ruler
set hlsearch
syntax enable
colorscheme desert
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
map <space> /
map <c-space> ?
map } 0i<space><space><Esc>
map { 0xx
map . gt
map , gT
map > :tabm +<cr>
map < :tabm -<cr>
map N :tabnew<cr>
map H :cprev<cr>
map L :cnext<cr>
map F :Ag
map <C-[> :CtrlPClearCache<CR>
map <C-n> :NERDTreeToggle<CR>

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/ag'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

let g:ctrlp_max_files=0
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
  \ 'AcceptSelection("t")': ['<cr>'],
  \ }

let g:airline_theme='angr'

set wildignore+=*/tmp/*,*.so,*.js*,*.swp,*.sql,*.zip,*.html,*/site-images/*,*/node_modules/*

autocmd BufWritePre * :%s/\s\+$//e
