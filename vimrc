set nocompatible
filetype off    " required

" call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/seoul256.vim'
" let Vundle manage Vundle, required
" Plug 'tpope/vim-fugitive'
" Plug 'git://git.wincent.com/command-t.git'
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on

colorscheme gruvbox
set background=dark
set guifont=Monaco:h18

" Настройки табов для Python, согласно рекоммендациям
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Включить подсветку синтаксиса

" set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamedplus
set ruler
set number
set scrolloff=7
set fileformat=unix
set hlsearch
set hidden

" nnoremap <C-y> "+y
" vnoremap <C-y> "+y
" nnoremap <C-p> "+p
" vnoremap <C-p> "+p

"No highlited search
nnoremap <A-j> :nohlsearch<CR>
inoremap <A-k> <esc>

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
