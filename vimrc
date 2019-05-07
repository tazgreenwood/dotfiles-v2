" SIMPLE VIM DEFAULTS

" Plugins Try to keep to minimum
call plug#begin('~/.vim/bundle')

" Javascript Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Buffer Explorer
Plug 'jlanzarotta/bufexplorer'

call plug#end()

set nocompatible
set noswapfile

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" UI interface settings
set number
set nowrap
set relativenumber
set expandtab
set sw=2
set ts=2
colorscheme OceanicNext
set cursorline
highlight CursorLine term=bold cterm=bold
highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
highlight LineNr ctermbg=NONE

" Code helpers
set autoindent

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" FILE BROWSING

" netrw settings
let g:netrw_banner=0		" disable annoying banner
let g:netrw_borwse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'
