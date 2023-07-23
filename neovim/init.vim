:set number
:set relativenumber
:set nocompatible
:set showmatch
:set mouse=v
:set hlsearch
:set tabstop=4
:set softtabstop=4
:set expandtab
:set shiftwidth=4
:set cc=120

syntax on
:set mouse=a
:set clipboard=unnamedplus

filetype plugin on
:set cursorline
:set noswapfile
:set backupdir=~/.cache/vim

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' "nerqevi ognox gicy
Plug 'preservim/nerdtree' "cuyca talis diriktoryanerywq
Plug 'joshdick/onedark.vim'
Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'} " terminal
call plug#end()

lua require("toggleterm").setup()


autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><C-r> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <silent><C-r> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><C-r> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'
