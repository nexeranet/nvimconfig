"                                          _
" _ __   _____  _____ _ __ __ _ _ __   ___| |_
"| '_ \ / _ \ \/ / _ \ '__/ _` | '_ \ / _ \ __|
"| | | |  __/>  <  __/ | | (_| | | | |  __/ |_
"|_| |_|\___/_/\_\___|_|  \__,_|_| |_|\___|\__|
"

source ~/.config/nvim/plugins.vim

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

let mapleader = ','
set ruler
set nocursorline
set nopaste
set nrformats= "Only decimal with counter

"======== SEARCH OPTIONS ========="

" highlight search results
set hlsearch
set incsearch
set ignorecase
set smartcase

" set number line
set number
set relativenumber

syntax on

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete background=dark
set backspace=indent,eol,start

set showmatch

" read/write file when switching buffers
set autoread
set autowrite

" tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab

" autoinde file
set autoindent
set cindent
set si "Smart indent

" undo files < save undo history of files after exit from vim >
""set undofile " Maintain undo history between sessions
""set undodir=~/.config/undodir_vim

set ma

"accelarated scrolling
"set scrolljump=-55
"set delay
set timeoutlen=550
"don't fold open files
set foldlevel=99

"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened

set redrawtime=10000
set re=0
syntax sync fromstart
set lazyredraw

" yank to clipboad
if has("clipboard")
    set clipboard+=unnamedplus
    "set clipboard=unnamed  " copy to the system clipboard
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => English and Russian layouts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" column and line settings
set lbr
set tw=500
set nowrap "Wrap lines
set textwidth=0
set wrapmargin=0
set colorcolumn=150

"======================"
" < COC.NVIM BASE SETTINGS >
"======================"
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"=============================="
" < COC.NVIM BASE SETTINGS end >
"=============================="

" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "

" ====== MAKEFILE ====== "

autocmd FileType make setlocal noexpandtab

" ====== VIMWIKI ====== "

source ~/.config/nvim/plugins/vimwiki.vim

" ====== COC.NVIM ====== "

source ~/.config/nvim/plugins/cocnvim.vim

" ====== DEOPLETE ====== "

"source ~/.config/nvim/plugins/deoplete.vim

" =========== SNIPPETS ========= "

source ~/.config/nvim/plugins/ultisnips.vim

" === NERDTree === "

source ~/.config/nvim/plugins/nerdtree.vim

" === EMMET === "

source ~/.config/nvim/plugins/emmet.vim

" ===== CODE AUTO-FORMAT PLUGIN ====

source ~/.config/nvim/plugins/neoformat.vim

" ===== AUTO-PAIRS PLUGIN ====

source ~/.config/nvim/plugins/autopairs.vim

" ==== A.L.E. ====== "

"source ~/.config/nvim/plugins/ale.vim

" ====== FZF CONFIG ======== "

source ~/.config/nvim/plugins/fzf.vim

" ====== LATEX CONFIG ======== "

"source ~/.config/nvim/plugins/latex.vim

" ====== VUE CONFIG ======== "

"source ~/.config/nvim/plugins/vue.vim

" ====== POLYGLOT CONFIG ======== "

source ~/.config/nvim/plugins/polyglot.vim

" ====== TYPESCRIPT CONFIG ======== "

"source ~/.config/nvim/plugins/typescript.vim

" =========================================================================== "
" ===                           THEME SETUP                               === "
" =========================================================================== "

" mouse scrolling in vim
set mouse=a
" list hidden characters
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:$
hi NonText ctermfg=8 guifg=gray ctermfg=8

set t_Co=256
set foldlevel=99

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set t_ZH=^[[3m
set t_ZR=^[[23m




" theme list
" # gruvbox
" # dracula
" onehalfdark

try
  colorscheme onehalfdark
catch
  colorscheme dalek
endtry

" ============================================================================ "
" ===                             HIGHLIGHT                                === "
" ============================================================================ "

"augroup javascriptHL
    "autocmd!
    "autocmd FileType javascript,vue,typescriptreact hi jsArrowFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
    "autocmd FileType javascript,vue,typescriptreact hi jsVariableDef ctermfg=117 ctermbg=NONE cterm=NONE guifg=#f5ad42 guibg=NONE gui=italic
"augroup END

highlight Comment cterm=italic gui=italic
highlight htmlArg gui=italic cterm=italic
highlight NonText cterm=italic ctermfg=241 gui=italic guifg=#5c6370

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow
set splitright

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

set noshowcmd
"""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" === Vim airline ==== "

source ~/.config/nvim/plugins/airline.vim

" IndentLine

"source ~/.config/nvim/plugins/indentline.vim

" ============================================================================ "
" ===                             AUTOCOMMAND                              === "
" ============================================================================ "

autocmd FileType javascript set suffixesadd+=.js

" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap <Esc> <C-\><C-n>
" back to command mode
"inoremap jj  <Esc>

inoremap <F1> <Esc>
noremap <F1> <Esc>

"test from video

"nnoremap j gj
"nnoremap k gk

" toggle number function

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

noremap <leader>n :call NumberToggle()<cr>

" allow toggling between local and default mode
function! TabToggle()
  if(&expandtab == 1)
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
  else
    set shiftwidth=4
    set softtabstop=4
    set expandtab
  endif
endfunc

noremap <leader>e :call TabToggle()<CR>

" reload init.vim
noremap <leader>r :source ~/.config/nvim/init.vim<cr>
" remove extra whitespace from file

noremap <leader>w :StripWhitespace<cr>

noremap <leader>c :set cursorline!<cr>

" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
"vnoremap <leader>bp "_dP

" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
map <leader>h :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>
