
execute pathogen#infect()

if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) in terminals
" set cul 		" Highlight cursor line

set number              " Show line number
set history=50
set ruler
set hlsearch
set shiftwidth=4
set expandtab           " Auto indent with spaces instead of tab
set foldmethod=syntax
set textwidth=78
set fo+=t

set enc=utf-8
" order is significant
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

syntax enable

if has('gui_running')
  set guioptions-=T
  set background=dark
  " set guifont=Monaco\ 10
  " Turn off toolbar and menu
  "set guioptions-=m
else
  set background=dark
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
end
" colorscheme solarized
colorscheme mustang

set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

set laststatus=2
"set statusline=%{GetGitBranch()}
"set statusline=%<%f\ %{fugitive#statusline()}%h%m%r%=%-14.(%l,%c%V%)\ %P

" hardcopy print header option
let format="%Y-%m-%d %a"
set printheader=%<Juvenn\ Woo\ \ %{strftime(format)}%=Page\ %N

set noeb

inoremap jj <ESC>


" swap files to put
set directory=~/.vim/tmp

" Backspace is allowed to delete the specific characters.
set backspace=indent,eol,start

let mapleader = "\<Space>"

" Ack setup
" let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ackprg="ag --nocolor --nogroup --column"
nmap <leader>a :Ack<space>

let g:airline_theme = 'molokai'

""""""""""superTab.vim""""""""""""""
set completeopt+=longest
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestHighlight = 1


""""""""netrw""""""""""""""
let g:netrw_winsize=20 " window size
let g:netrw_liststyle=3 " Use tree-mode as default view
let g:netrw_preview=1 " preview window shown in a vertically split
" let g:netrw_browse_split=4 " Open file in previous buffer


"""""""""""taglist.vim"""""""
" Close taglist window when main
" window closed
let Tlist_Exit_OnlyWindow = 1
let g:tlist_js_settings = 'js;s:string;a:array;o:object;f:function'
" <F3> to toggle taglist
nmap <F3> :TlistToggle<CR>

"""""""""project.vim"""""""
let g:proj_flags = 'cimstL'

""""""""snipMate.vim""""""""""""
let g:snips_author = 'Juvenn Woo'

