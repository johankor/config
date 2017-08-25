set nocompatible
set cursorline
filetype off
" set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rakr/vim-one'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ervandew/supertab'

" show status line (power) in single window also
set laststatus=2

"" don't auto continue comments
setlocal comments-=://
setlocal comments+=f://
"" tab preferences
set tabstop=4
set softtabstop=0 noexpandtab
" indent correspond to 1 tab
set shiftwidth=4

" rearrange splits
" :command Spm <C-W> r

" session store: include folds
set sessionoptions+=folds

" auto-size splits (70%)
let &winheight = &lines * 6 / 10

syntax on
set nu
set relativenumber

" remove menu elements form gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" colorscheme
colorscheme desert

" views navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
" tabs navigation
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

" python specific
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

nnoremap <buffer> <F9> :exec '!clear' <cr> <bar> :exec '!python3' shellescape(@%, 1)<cr>
nnoremap <F10> :exec '!clear&&make' <CR>
nnoremap <F12> :exec '!clear&&make&&./main' <CR>

" all plugins must be added bfore the following line
call vundle#end()
filetype plugin indent on

