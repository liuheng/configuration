"""original config
set nocompatible

"""encodings
set fileencodings=utf-8,cp936,gb2312,gbk,gb18030,big5,ucs-bom,euc-jp,euc-kr,latin1
set encoding=utf-8
set termencoding=utf-8
language messages en_US.UTF-8

"""Use Unix as the standard file type
set ffs=unix,mac,dos

"""common config
set number
set ruler
set hlsearch
set incsearch
set wrapscan
set showcmd
set ignorecase
set smartcase
set nobackup
set nowb
set noswapfile
set backspace=indent,eol,start
set whichwrap=b,s,<,>,~,[,]
"set nowrap
set paste
set showmatch
set cursorline
set magic
set guifont=Courier_New:h15:cANSI

set mat=2
set so=3
set history=1000

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set smartindent
set ai
set si

syntax enable
syntax on

set foldenable
set foldmethod=manual
set foldcolumn=0

"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2

"""auto fullscreen
"au GUIEnter * simalt ~x

"""bundles
set nocompatible
filetype off

set rtp+=~/.vim/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Solarized'
Bundle 'Tagbar'
Bundle 'ctrlp.vim'
Bundle 'rainbow_parentheses.vim'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'
Bundle 'trailing-whitespace'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Yggdroot/indentLine.git'
Bundle 'EasyMotion'
Bundle 'matchit.zip'
Bundle 'UltiSnips'
Bundle 'The-NERD-Commenter'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'delimitMate.vim'
Bundle 'Tabular'
Bundle 'Python-Syntax'
Bundle 'Syntastic'
Bundle 'pyflakes.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'pangloss/vim-javascript.git'
Bundle 'TaskList.vim'
Bundle 'fugitive.vim'
Bundle 'Gundo'
Bundle 'MRU'
Bundle 'jQuery'
Bundle 'SuperTab'
Bundle 'ctags.vim'
Bundle 'cscope.vim'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'a.vim'
Bundle 'echofunc.vim'
Bundle 'liuheng/conque.vim.git'
Bundle 'Valloric/YouCompleteMe.git'
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

"""color-solarized
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif

"""easymotion
"let g:EasyMotion_leader_key = '<Leader><Leader>'

"""python-syntax
let python_highlight_all = 1

"""tag list
let Tlist_Ctags_Cmd = 'ctags'
let Tlist_Show_One_File = 1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_Menu = 1
let Tlist_Use_SingleClick = 1
"let Tlist_Auto_Open = 1

"""cscope
set cscopequickfix=c-,d-,e-,f-,g-,i-,s-,t-
set cscopetag
set csto=0
"set cscopeverbose
set cspc=3
if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif

"""buf explorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize=30
let g:bufExplorerUseCurrentWindow=1

"""winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>

