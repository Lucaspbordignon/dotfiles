"
" Using the 'gvim' package to enable the clipboard feature.
"

set number " Line numbers
set mouse=a " Mouse support
set laststatus=2 " Enable airline
set expandtab " Insert spaces instead of tab
set softtabstop=4 " Set the width of the 'spaces tab' 
set tabstop=4 " Width of a hard tab(for visualization)
set shiftwidth=4 " Set size of 'reindent' operation (<< and >>)
set clipboard=unnamedplus   " Set system clipboard as vim clipboard

" Theme
colorscheme tropikos
syntax on

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs' " Brackets autocomplete
Plugin 'Syntastic' " Syntax checker
Plugin 'L9'
Plugin 'bling/vim-airline' " Status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" Pydiction autocomplete (python).
" https://github.com/vim-scripts/Pydiction 
let g:pydiction_location = '/home/lucasbordignon/.vim/bundle/pydiction/complete-dict'

" Syntastic
let g:syntastic_error_symbol='!'
let g:syntastic_style_error_symbol='!'
let g:syntastic_python_checkers=['flake8']    " pip install flake8
let g:syntastic_python_flake8_args='--ignore=E501,E225'     " Disable 'line too long'
let g:syntastic_check_on_open=1 " Check the file when open(Not only on save)
let g:syntastic_python_python_exec='/usr/bin/python3.5'

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1 " Syntastic integration

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
