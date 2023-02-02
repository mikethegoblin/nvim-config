set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set splitright

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " status line at the bottom
Plug 'https://github.com/vim-airline/vim-airline-themes' " status line theme 
Plug 'https://github.com/preservim/nerdtree' " file explorer plugin
Plug 'https://github.com/ryanoasis/vim-devicons' " plugin for icons
Plug 'https://github.com/tpope/vim-commentary' " plugin for code commenting
Plug 'https://github.com/EdenEast/nightfox.nvim' " editor colorscheme
Plug 'akinsho/toggleterm.nvim' " easy-to-use terminal toggle
Plug 'windwp/nvim-autopairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'navarasu/onedark.nvim' " editor colorscheme
Plug 'Vimjas/vim-python-pep8-indent'
" plugins for auto completion
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip' " snippet engine
Plug 'saadparwaiz1/cmp_luasnip' " snippet completion
Plug 'rafamadriz/friendly-snippets' " a bunch of preconfigured snippets for different languages

" lsp 
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'RRethy/vim-illuminate'
call plug#end()

set encoding=utf-8

" colorscheme
colorscheme onedark

" statusbar theme
let g:airline_theme='deus'
let g:airline_symbols = {}
let g:airline_symbols.colnr = '  cn:'
let g:airline#extensions#whitespace#enabled = 0
" tabline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tab_nr = 0 " disable tab number
let g:airline#extensions#tabline#show_splits = 0 " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_count = 0 " dont show tab count on the right of tabline
let g:airline#extensions#tabline#show_close_button = 0 " disable close button

" nerdtree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
" quit nerdtree when it is the last window or tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <C-t> :NERDTreeToggle<CR>


" other key bindings
nnoremap <space> <nop>
let mapleader=" "
inoremap jk <Esc>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
" for easy copy and paste to and from system clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p 
" key bindings to move between windows in terminal and normal mode
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" lua plugin config 
lua << EOF
require('toggleterm_config')
require('autopair_config')
require('treesitter_config')
require('cmp_config')
require('lsp')
EOF


