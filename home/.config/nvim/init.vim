set autoread
set number
set history=500
set ruler
set colorcolumn=140
set hlsearch
syntax enable
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
set cursorline
set guicursor=
set mouse=
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
map <C-j> <C-d>zz
map <C-k> <C-u>zz

" NEED TO ALSO INSTALL: ripgrep
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/ag'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zacanger/angr.vim'
Plug 'haishanh/night-owl.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'mechatroner/rainbow_csv'
Plug 'xolox/vim-misc'
Plug 'dense-analysis/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'unblevable/quick-scope'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kamykn/spelunker.vim'
Plug 'mbbill/undotree'
Plug 'ryanoasis/vim-devicons' " always last
let g:airline_powerline_fonts = 1
call plug#end()

map <C-[> :CtrlPClearCache<CR>
map B :Git blame<CR>
map F :ALEFix<CR>
map <F5> :UndotreeToggle<CR>

" let g:ctrlp_max_files=0
" let g:ctrlp_prompt_mappings = {
"   \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
"   \ 'AcceptSelection("t")': ['<cr>'],
"   \ }
map <C-p> :Telescope find_files theme=ivy<cr>
map <C-f> :Telescope live_grep theme=ivy<cr>

let g:airline_theme='angr'
colorscheme night-owl

set wildignore+=*/tmp/*,*.so,*.swp,*.sql,*.zip,*.html,*/site-images/*,*/node_modules/*,*/javascript/*/lib/*

" Manage formatting and linters
let g:ale_fixers = ['stylelint', 'eslint', 'rubocop']
let g:ale_sign_column_always=1
let g:airline#extensions#ale#enabled=1
let g:strip_only_modified_lines=1
set nocindent
set nosmartindent
set autoindent
set indentexpr=
filetype indent off
filetype plugin indent off
let g:indent_guides_enable_on_vim_startup = 1

" Manage Spell Check, spelunker (Zl to correct a word, Zg to add a word, ZN jump to next mis-spelled word)
set nospell

hi DiffAdd      cterm=BOLD ctermfg=NONE ctermbg=22
hi DiffDelete   cterm=BOLD ctermfg=NONE ctermbg=52
hi DiffChange   cterm=BOLD ctermfg=NONE ctermbg=23
hi DiffText     cterm=BOLD ctermfg=NONE ctermbg=23
hi CursorLine   cterm=BOLD ctermbg=0 guibg=0
hi CursorLineNr cterm=BOLD ctermbg=0 guibg=0
