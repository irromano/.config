set relativenumber

set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch
set scrolloff=8
set signcolumn=yes

call plug#begin()

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox

let mapleader = " "

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pg :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>pf :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
