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
"NeoBundle 'jcf/vim-latex'

"   Colorscheme & Syntax Highlighting
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'chrisbra/Colorizer'
NeoBundle 'Raimondi/delimitMate'

" Git helpers
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'jreybert/vimagit'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

NeoBundle 'tpope/vim-vinegar'

" untils
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'matze/vim-move'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'terryma/vim-multiple-cursors'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Chiel92/vim-autoformat'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'gorodinskiy/vim-coloresque'

" YouCompleteMe
"NeoBundle 'Valloric/YouCompleteMe'

" Java Completer
"NeoBundle 'artur-shaik/vim-javacomplete2'
"NeoBundle 'vim-scripts/javacomplete'   

" Taglist
"NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'majutsushi/tagbar'

" Other Completion tool
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neco-vim'
NeoBundle 'Shougo/neoinclude.vim'


" Session Management
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'

" CPP
NeoBundle 'octol/vim-cpp-enhanced-highlight'

" Airline
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

"NeoBundle 'rking/ag.vim'
"NeoBundle 'mileszs/ack.vim'

NeoBundle 'ashisha/image.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'matthewsimo/angular-vim-snippets'

"Gundo
NeoBundle 'sjl/gundo.vim' 

"   Icons
NeoBundle 'ryanoasis/vim-webdevicons'
NeoBundle 'guns/xterm-color-table.vim'
NeoBundle 'sjl/clam.vim'
NeoBundle 'vim-scripts/CSApprox'
NeoBundle 'fmoralesc/vim-tutor-mode'
NeoBundle 'ryanoasis/vim-devicons'

" FZF
NeoBundle 'junegunn/fzf.vim', { 'dir': '/usr/local/opt/fzf'} ", 'do': 'yes \| ./install --all' }
NeoBundle 'junegunn/fzf.vim'
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" }}}

" Vim Weird Config {{{

"set guifont<FONT_NAME>:h<FONT_SIZE>

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

"set encoding=utf-8
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

" Appearance {{{

" Colorscheme {{{

syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
"colorscheme candyman
set background=dark
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
hi CursorLineNR guifg=#ffffff

"au FileType tex set background=light
"au FileType tex colorscheme PaperColor

" }}}

" Indent Line {{{
let g:indentLine_enabled = 1

" }}}

" Airline {{{

if !exists("g:airline_symbols")
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 "tab number
let g:airline_powerline_fonts = 1

"au FileType tex let g:airline_theme='papercolor'

" }}}

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

" Completion and syntax {{{

" Syntastic {{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w=1
let g:syntastic_check_on_wq = 0

"let g:syntastic_mode_map = {'passive_filetypes':['java']}

au FileType cpp let g:syntastic_cpp_compiler = 'g++'
au FileType cpp let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++' 

au FileType java let g:syntastic_quiet_messages = {"level": "warnings"}

" }}}

" Deoplete {{{

let g:deoplete#enable_at_startup = 1

" }}}

" FZF {{{
set rtp+=/usr/local/opt/fzf
let g:fzf_command_prefix = 'Fzf'

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~40%' }

" For Commits and BCommits to customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Advanced customization using autoload functions
autocmd VimEnter * command! Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" }}}

" Obsolete {{{

" YouCompleteMe{{{

"------------------------------------
"OBSOLETE SINCE DEOPLETE!!!!!!!!!!!
"-------------------------------------

"nnoremap ,C :!ctags -R --fields=+l --exclude=.git --exclude=log --exclude=tmp *<CR><CR>

"let g:ycm_global_ycm_extra_conf = "~/.nvim/config/.ycm_extra_conf.py"

"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]

"let g:ycm_collect_identifiers_from_tags_files = 1

"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_retister_as_syntastic_checker = 0
" }}}

 " Java Completion {{{

"-------------------------------------
"OBSOLETE SINCE DEOPLETE!!!!!!!!!!!
"-------------------------------------

"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:JavaComplete_ClosingBrace = 1
"g:JavaComplete_SourcesPath

"au FileType java nmap <F4> <Plug>(JavaComplete-Imports-Add)
"au FileType java imap <F4> <Plug>(JavaComplete-Imports-Add)

"au FileType java nmap <F5> <Plug>(JavaComplete-Imports-AddMissing)

"au FileType java imap <F5> <Plug>(JavaComplete-Imports-AddMissing)


"au FileType java nmap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)

"au FileType java imap <F6> <Plug>(JavaComplete-Imports-RemoveUnused)

" }}}

" }}}

" }}}

" Autres {{{

" Session management {{{

let g:session_directory="~/.nvim/sessions"
let g:session_autoload="no"
let g:session_autosave="no"

" }}}

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

let g:python3_host_prog = "/usr/local/bin/python3" 

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
"nnoremap <C-j> <C-w>j
nnoremap <C-G> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" new tab

"vimrc racourcis
nnoremap <F3> :tabnew ~/.nvim/.nvimrc<cr>

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

" From MikesVimrc {{{

set guifont<FONT_NAME>:h<FONT_SIZE>

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

" Git gitgutter column colors
call gitgutter#highlight#define_highlights()

" Space to toggle folds.
nnoremap <Space> za

"NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('vim', 'green', 'none', '#00FF00', '#151515')
call NERDTreeHighlightFile('java', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('cpp', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('log', 'white', 'none', '#FFFFFF', '#151515')
call NERDTreeHighlightFile('txt', 'white', 'none', '#FFFFFF', '#151515')
call NERDTreeHighlightFile('pdf', 'white', 'none', '#FFFFFF', '#151515')
call NERDTreeHighlightFile('jpg', 'blue', 'none', '#00CCCC', '#151515')
call NERDTreeHighlightFile('png', 'blue', 'none', '#00CCCC', '#151515')
call NERDTreeHighlightFile('h', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('html', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('bib', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('tex', 'Red', 'none', '#FF0000', '#151515')
call NERDTreeHighlightFile('lot', 'Red', 'none', '#FF0000', '#151515')
call NERDTreeHighlightFile('zip', 'Magenta', 'none', '#ff00ff', '#151515')

" Cursor Position & CTRLP & GREP
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ctrlp_user_command = 'ag %s -i --nogroup --hidden
"     \ --ignore .git
"     \ --ignore .svn
"     \ --ignore .hg
"     \ --ignore .DS_Store
"     \ --ignore "**/*.pyc"
"     \ --ignore lib
"     \ -g ""'
" let g:ctrlp_regexp = 1
" let g:ctrlp_use_caching = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_switch_buffer = 0

" Remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
  autocmd BufRead * normal zz

" }}}

" Vim-Latex Config {{{


"Fichier de configuration vim-latex
"let g:latex_enable = 1
"let g:latex_complete_enabled = 1
"let g:latex_indent_enabled = 1
"let g:latex_mappings_enabled = 1

" Configure listings environment
"syn region texZone start="\\begin{lstlisting}" end="\\end{lstlisting}\|%stopzone\>"
"syn region texZone  start="\\lstinputlisting" end="{\s*[a-zA-Z/.0-9_^]\+\s*}"
"syn match texInputFile "\\lstinline\s*\(\[.*\]\)\={.\{-}}" contains=texStatement,texInputCurlies,texInputFileOpt

" Fichier de configuration latex-suite
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.

"Alt-keys
"set winaltkeys=no

"set iskeyword+=:,-,_

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='pdflatex'
"let g:latex_latexmk_options="-pdf -pvc -pdflatex='pdflatex -file-line-error -synctex=1'"
"let g:TTarget='pdf'
"let g:Tex_CompileRule_pdf = 'pdflatex $*.pdf'

"set complete-=k complete+=k
"set complete+=kspell
"set complete+=]
"
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabLongestEnhanced = 1
"
"autocmd FileType tex
"            \ if &omnifunc != '' |
"            \   call SuperTabChain(&omnifunc, "<c-n>") |
"            \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
"            \ endif
"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"            \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"
"inoremap <expr> <tab> pumvisible() ? '<tab>' :
"            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"===== 
" For custom mappings 
"imap <D-p> <Plug>Tex_InsertItemOnThisLine

"imap <D-b> <Plug>Tex_MathBF
"imap <D-c> <Plug>Tex_MathCal
"imap <D-l> <Plug>Tex_LeftRight
"imap <D-i> <Plug>Tex_InsertItemOnThisLine 
"imap <D-u> <Plug>Tex_InsertItemOnThisLine 
"imap <D-y> <Plug>Tex_InsertItemOnNextLine 

"sertItemOnNextLine 

"imap <C-b> <Plug>Tex_MathBF
"imap <C-c> <Plug>Tex_MathCal 
"imap <C-l> <Plug>Tex_LeftRight 
"imap <C-u> <Plug>Tex_InsertItemOnThisLine 
"imap <C-y> <Plug>Tex_InsertItemOnNextLine 

"imap <A-u> <Plug>Tex_InsertItemOnThisLine 
"imap <A-y> <Plug>Tex_InsertItemOnNextLine 
" 
"======



" }}}

" }}}

