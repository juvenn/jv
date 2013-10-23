runtime! debian.vim

filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on

set background=dark
colorscheme mustang

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
set shiftwidth=2
set foldmethod=syntax
set textwidth=72
set fo+=t

set enc=utf-8
" order is significant
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936


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

" Ack setup
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

""""""""""superTab.vim""""""""""""""
set completeopt+=longest
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabLongestHighlight = 1

let mapleader = ","

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

nmap <leader>a :Ack<space>

" gvim 
if has('gui_running')
  set encoding=utf-8
  set guifont=Monaco\ 10
  " Turn off toolbar and menu
  set guioptions-=T
  "set guioptions-=m
  colorscheme mustang
end

