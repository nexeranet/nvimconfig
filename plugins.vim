" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "
call plug#begin('~/.vim/plugged')

"======== A collection of language packs for Vim========"

Plug 'sheerun/vim-polyglot'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

" ======== WIKI ========= "

Plug 'vimwiki/vimwiki'

" ======== BASE ========= "

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'

"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'

" hightlited yank text
Plug 'machakann/vim-highlightedyank'


" ============== UI.THEME ============ "

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" ======== CODE CHECKER, LINTER, AUTOCOMPLETE ======= "

"====CODE CHECKER

"Plug 'w0rp/ale'

"====CODE AUTOCOMPLETE
"========DEOPLETE START========="
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"========DEOPLETE END========="

"========COC.NVIM START========="

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"========COC.NVIM END========="
"
"====CODE SNIPPETS
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
"
" Track the engine.<current snitppets>
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" ==== FILES AND SEARCH PLUGINS ====== "

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

" ======== LANGUAGE SUPPORTS ========= "


"========MARKDOWN========"

"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

"========LATEX========"
"Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"======HTML CSS========"
Plug 'mattn/emmet-vim'

"========PYTHON========"
"Plug 'zchee/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'

"==========JS=========="

"Plug 'jelera/vim-javascript-syntax'
"Plug 'pangloss/vim-javascript'

"=========Vue=========="
"
"Plug 'leafOfTree/vim-vue-plugin'

"==========Typescritp=========="

"Plug 'leafgarland/typescript-vim'

"Plug 'posva/vim-vue'
"

"Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

"Plug 'carlitux/deoplete-ternjs'


call plug#end()
