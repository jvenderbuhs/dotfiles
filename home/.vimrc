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
hi CursorLine cterm=NONE ctermbg=darkred guibg=darkred

map <space> /
map <c-space> ?
map } :tabm +<cr>
map { :tabm -<cr>
map . gt
map , gT
map N :tabnew<cr>
map H :cprev<cr>
map L :cnext<cr>
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
Plugin 'zacanger/angr.vim'

call vundle#end()

let g:ctrlp_max_files=0
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
  \ 'AcceptSelection("t")': ['<cr>'],
  \ }

let g:airline_theme='angr'

set wildignore+=*/tmp/*,*.so,*.js*,*.swp,*.sql,*.zip,*.html,*/site-images/*,*/node_modules/*

autocmd BufWritePre * :%s/\s\+$//e

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
