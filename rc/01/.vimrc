syntax on

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set smartcase
set directory^=$HOME/.vim/tmp//
if has("persistent_undo")
  set undodir=$HOME."/.vim/undo"
  set undofile
endif
set incsearch

call plug#begin('~/.vim/plugged')
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'morhetz/gruvbox'
  Plug 'leafgarland/typescript-vim'
  Plug 'vim-utils/vim-man'
  Plug 'git@github.com:Valloric/YouCompleteMe.git'
  Plug 'mbbill/undotree'
  Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme gruvbox
set background=dark

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let mapleader = " "
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>v :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

