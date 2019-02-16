call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
" Favourite lightline colorscheme: darcula
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ }

Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
map <C-t> :NERDTreeToggle<CR>

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-commentary'

Plug 'justinmk/vim-syntax-extra'

Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1

" Colorschemes
Plug 'lifepillar/vim-solarized8' " solarized8_high
let g:solarized_term_italics = 1 "Used to set comments in italics

call plug#end()

" SIMPL
au BufRead,BufNewFile *.simpl setfiletype simpl
au FileType simpl set softtabstop=4 shiftwidth=4 tabstop=4 textwidth=80

" NASM
autocmd Filetype nasm setlocal ts=2 sw=2 softtabstop=2

" Searching
set hlsearch "Highlight searches
set ignorecase smartcase "Make searches case-insensitive

" Other
set cul "Highlights current line
set number "Enable line number
set scrolloff=3 "Leaves 3 lines above or below cursor when scrolling
set smarttab
set mouse=a "Enables mouse clicks
set autoindent
set expandtab

" Lightline settings
set laststatus=2 "Always show status line
set noshowmode "Don't show the current mode

" Colorscheme settings
set termguicolors
set background=dark
colorscheme solarized8_high
