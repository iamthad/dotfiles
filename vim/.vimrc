set nocompatible
filetype on
filetype plugin on
filetype plugin indent on
" Fortran stuff
" If always using free source (never F77), can enable next line
" But, now it is set to be more flexible using ftplugin
" let fortran_free_source=1
" Enable Fortran syntax folding
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_fold_multilinecomments=1
syntax enable
set expandtab
set smarttab
set autoindent
set hlsearch
set incsearch
set virtualedit=onemore
set shiftwidth=2
set softtabstop=2
set number
set ignorecase
set smartcase
set cursorline
colorscheme solarized

" Auto-switch background
" From http://benjamintan.io/blog/2014/04/10/switch-solarized-light-slash-dark-depending-on-the-time-of-day/
let hour = strftime("%H")
if 6 <= hour && hour < 18
  set background=light
else
  set background=dark
endif

set foldmethod=syntax
" set t_Co=256
