" SIMPLE VIM DEFAULTS

"  ______ _             _
"  | ___ \ |           (_)
"  | |_/ / |_   _  __ _ _ _ __  ___
"  |  __/| | | | |/ _` | | '_ \/ __|
"  | |   | | |_| | (_| | | | | \__ \
"  \_|   |_|\__,_|\__, |_|_| |_|___/
" -----------------__/ |-------------
"                 |___/
" Plugins Try to keep to minimum
call plug#begin('~/.vim/bundle')

" Javascript Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Buffer Explorer
Plug 'jlanzarotta/bufexplorer'

" Nerd Tree
Plug 'scrooloose/nerdtree'

" Autocompletion
Plug 'valloric/youcompleteme'
Plug 'zxqfl/tabnine-vim'

" Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'

" Golang support
Plug 'fatih/vim-go'

" Python support
Plug 'klen/python-mode'
Plug 'hdima/python-syntax'

" Git integration
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'

" Lightline
Plug 'vim-airline/vim-airline'

" CSV syntax highlighting
Plug 'mechatroner/rainbow_csv'

call plug#end()

set nocompatible
set noswapfile

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

"  _____      _             __
" |_   _|    | |           / _|
"   | | _ __ | |_ ___ _ __| |_ __ _  ___ ___
"   | || '_ \| __/ _ \ '__|  _/ _` |/ __/ _ \
"  _| || | | | ||  __/ |  | || (_| | (_|  __/
"  \___/_| |_|\__\___|_|  |_| \__,_|\___\___|
" --------------------------------------------
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
highlight nonText ctermbg=NONE
highlight LineNr ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE

" Code helpers
set autoindent

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" hightlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" better go highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_calls = 1

"   _   __           _     _           _ _
"  | | / /          | |   (_)         | (_)
"  | |/ /  ___ _   _| |__  _ _ __   __| |_ _ __   __ _ ___
"  |    \ / _ \ | | | '_ \| | '_ \ / _` | | '_ \ / _` / __|
"  | |\  \  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
"  \_| \_/\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |___/
" ------------- __/ |---------------------------- __/ |----
"              |___/                             |___/
let mapleader = " "

" edit vimrc in vsplit
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>

" source current file
nnoremap <Leader>! :source %<CR>

" save and quit
nnoremap <Leader>s :w<CR>
nnoremap <Leader>q :q<CR>

" copy and paste to global buffer
vnoremap <Leader>y "+y
vnoremap <Leader>p "+P

" window splits and navigation
nnoremap <Leader>hs :split<CR>
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Tab> <C-w><C-w>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Nerdtree toggle
nnoremap <Leader>t :NERDTreeToggle<CR>

" Ctrl-P bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rw'



"   _____                           _ _____      _   _   _
"  |  __ \                         | /  ___|    | | | | (_)
"  | |  \/ ___ _ __   ___ _ __ __ _| \ `--.  ___| |_| |_ _ _ __   __ _ ___
"  | | __ / _ \ '_ \ / _ \ '__/ _` | |`--. \/ _ \ __| __| | '_ \ / _` / __|
"  | |_\ \  __/ | | |  __/ | | (_| | /\__/ /  __/ |_| |_| | | | | (_| \__ \
"   \____/\___|_| |_|\___|_|  \__,_|_\____/ \___|\__|\__|_|_| |_|\__, |___/
" --------------------------------------------------------------- __/ |----
"                                                                |___/
