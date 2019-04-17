" SIMPLE VIM DEFAULTS

set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" UI interface settings
set number
highlight LineNr ctermfg=grey ctermbg=NONE
" colorscheme vividchalk

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
