"      __                _                      
"   /\ \ \___  ___/\   /(_)_ __ ___             
"  /  \/ / _ \/ _ \ \ / / | '_ ` _ \            
" / /\  /  __/ (_) \ V /| | | | | | |           
" \_\ \/ \___|\___/ \_/ |_|_| |_| |_|           
"                                               
"  _               ___      _          _      _ 
" | |__  _   _    / _ \__ _| |__  _ __(_) ___| |
" | '_ \| | | |  / /_\/ _` | '_ \| '__| |/ _ \ |
" | |_) | |_| | / /_\\ (_| | |_) | |  | |  __/ |
" |_.__/ \__, | \____/\__,_|_.__/|_|  |_|\___|_|
"        |___/                                  

" Author: Gabriel

" Setup NeoBundle {{{
" if not install do it first
"
let bundleExists = 1
if (!isdirectory(expand("$HOME/.config/nvim/bundle/neobundle.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim"))
    let bundleExists = 0
endif

if 0 | endif

if has('vim_starting')
    if &compatible
      set nocompatible               " Be iMproved
    endif
endif
"}}}

" NeoBundle Scripts {{{

" Required:
set runtimepath+=~/.config/nvim/bundle/neobundle.vim
"set runtimepath+=~/.nvim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/Gabriel/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:

"   Syntax
    NeoBundle 'wavded/vim-stylus'
    NeoBundle 'tpope/vim-markdown'
    NeoBundle 'scrooloose/syntastic'
    NeoBundle 'tmux-plugins/vim-tmux'

"   Colorscheme & Syntax Highlighting
    NeoBundle 'flazz/vim-colorschemes'
    NeoBundle 'mhartington/oceanic-next'
    NeoBundle 'kien/rainbow_parentheses.vim'
    NeoBundle 'chrisbra/Colorizer'
    NeoBundle 'Raimondi/delimitMate'
    
    " Git helpers
    NeoBundle 'tpope/vim-fugitive'
    NeoBundle 'airblade/vim-gitgutter'
    NeoBundle 'Xuyuanp/nerdtree-git-plugin'

    NeoBundle 'tpope/vim-vinegar'

    " untils
    NeoBundle 'matze/vim-move'
    NeoBundle 'editorconfig/editorconfig-vim'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'terryma/vim-multiple-cursors'
    NeoBundle 'ctrlpvim/ctrlp.vim'
    NeoBundle 'christoomey/vim-tmux-navigator'
    NeoBundle 'vim-airline/vim-airline'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'Chiel92/vim-autoformat'
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'Quramy/tsuquyomi'

    NeoBundle 'rking/ag.vim'
    NeoBundle 'mileszs/ack.vim'
    " NeoBundle 'ashisha/image.vim'
    NeoBundle 'Shougo/neosnippet'
    NeoBundle 'Shougo/neosnippet-snippets'
    NeoBundle 'matthewsimo/angular-vim-snippets'
"   Icons
    NeoBundle 'ryanoasis/vim-webdevicons'
    NeoBundle 'guns/xterm-color-table.vim'
    NeoBundle 'sjl/clam.vim'
    NeoBundle 'vim-scripts/CSApprox'
    NeoBundle 'fmoralesc/vim-tutor-mode'

call neobundle#end()

 " Required:
filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" }}}

" Vim Weird Config {{{
set number
set backspace=2
set mouse=a

"Completion settings
set grepprg=grep\ -nH\ $*

set smarttab		"Better allign tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces
set showcmd         " show command in bottom bar
set colorcolumn=110
highlight colorcolumn ctermbg=darkgray

set cursorline         " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set relativenumber      " Puts relative numbers

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=0    " open most folds by default
set foldnestmax=10      " 10 nested fold max

set foldmethod=marker   " fold based on indent level
set foldlevel=1
set modelines=1

" Split config
set splitbelow
set splitright

" Permet le word wrapping
set formatoptions+=1
set tw=105
set wrap linebreak nolist
set textwidth=0
set wrapmargin=0

" }}}

" Colorscheme {{{

syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"colorscheme candyman
set background=dark
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

" }}}

