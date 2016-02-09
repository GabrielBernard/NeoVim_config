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
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'matze/vim-move'
    NeoBundle 'editorconfig/editorconfig-vim'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'terryma/vim-multiple-cursors'
    NeoBundle 'ctrlpvim/ctrlp.vim'
    NeoBundle 'christoomey/vim-tmux-navigator'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'Chiel92/vim-autoformat'
    NeoBundle 'Shougo/neocomplete.vim'
    NeoBundle 'Quramy/tsuquyomi'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'SirVer/ultisnips'
    NeoBundle 'Yggdroot/indentLine'
    
    " YouCompleteMe
    NeoBundle 'Valloric/YouCompleteMe'
    
    " Taglist
    NeoBundle 'vim-scripts/taglist.vim'
    NeoBundle 'majutsushi/tagbar'

    " Session Management
    NeoBundle 'xolox/vim-misc'
    NeoBundle 'xolox/vim-session'

    " CPP
    NeoBundle 'octol/vim-cpp-enhanced-highlight'

    " Airline
    NeoBundle 'vim-airline/vim-airline'
    NeoBundle 'vim-airline/vim-airline-themes'

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

    "Gundo
    NeoBundle 'sjl/gundo.vim' 

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

au FileType tex set background=light
au FileType tex colorscheme PaperColor

" }}}

" Indent Line {{{
let g:indentLine_enabled = 1

" }}}

" Airline {{{

"let g:airline_theme='solarized'

if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "tab number

au FileType tex let g:airline_theme='papercolor'

" }}}

" Gundo + Backup {{{

set undodir=~/.nvim/tmp/undo//
set backupdir=~/.nvim/tmp/backup//
set directory=~/.nvim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*"
set backup
set writebackup
set noswapfile

"persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100

nnoremap <F1> :GundoToggle<CR>

" }}}

" Syntastic {{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w=1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {'passive_filetypes':['java']}

au FileType cpp let g:syntastic_cpp_compiler = 'g++'
au FileType cpp let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++' 

" }}}

" YouCompleteMe{{{

nnoremap ,C :!ctags -R --fields=+l --exclude=.git --exclude=log --exclude=tmp *<CR><CR>

let g:ycm_global_ycm_extra_conf = "~/.nvim/config/.ycm_extra_conf.py"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_show_diagnostics_ui = 0
"let g:ycm_retister_as_syntastic_checker = 0
" }}}

" Session management {{{

let g:session_directory="~/.nvim/sessions"
let g:session_autoload="no"
let g:session_autosave="no"

" }}}

" cpp-enhanced-highlight {{{

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" }}}

" Session management {{{

let g:session_directory="~/.nvim/sessions"
let g:session_autoload="no"
let g:session_autosave="no"

"}}}

" cpp-enhanced-highlight {{{

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" }}}

" spell check {{{

autocmd BufEnter *.tex set spell spelllang=fr
au BufEnter *.txt set spell spelllang=fr 

" }}}

" Python {{{
let g:python_host_prog = '/usr/bin/python'
let g:loaded_python_profider = 0 " 1 to disable python

" }}}

"Remapping {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" move between windows
nnoremap <C-j> <C-w>j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" new tab

"vimrc racourcis
nnoremap <F3> :tabnew ~/.vimrc<cr> :vsplit ~/.vim/config/settings.vim<cr>

"let mapleader=","       " leader is comma

" map spell check language change
map <silent> <F7> <Esc>:silent setlocal spell! spelllang=en<CR> :set spell<CR>
map <silent> <F6> <Esc>:silent setlocal spell! spelllang=fr<CR> :set spell<CR>

"}}}

"Compiler{{{

"au FileType cpp set makeprg=\ clang++\ -std=c++11\ -stdlib=libc++\ -Weverything\ -g\ -o\ MyProgram\ %
au FileType cpp set makeprg=\ g++\ -v\ -std=c++14\ -stdlib=libc++\ *.cpp\ -g\ -o\ MyProgram
"au FileType latex set makeprg=\pdflatex\ % ";\ bibtex\ %;\ pdflatex\ %\ pdflatex\ %\

au Filetype java set makeprg=\ javac\ *.java

au FileType tex set makeprg=\ pdflatex\ %;\ pdflatex\ %;\ pdflatex\ %;\ latexmk\ -c;\ open\ *.pdf;

nnoremap <F4> :make!<cr>

au Filetype cpp nnoremap <F5> :!./MyProgram<cr>

"}}}


