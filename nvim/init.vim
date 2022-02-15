set number
set termguicolors
set nuw=4
set shiftwidth=4
set tabstop=4 softtabstop=4
set colorcolumn=80
set incsearch
set expandtab
set noerrorbells
set encoding=UTF-8
set mouse=a
set showmatch
set ruler
set smarttab
set cursorline
set ignorecase
set clipboard=unnamedplus
set noswapfile
syntax on

map <Space> <Leader>

lua require('plugins')
lua require('settings')

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

colorscheme catppuccin
