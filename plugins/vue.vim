"let g:vue_disable_pre_processors=1
"autocmd FileType vue syntax sync fromstart
"autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug

autocmd BufReadPost,BufNewFile *.vue setlocal filetype=vue

let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_highlight_vue_attr=1
let g:vim_vue_plugin_debug=1
nnoremap <leader>v :syntax sync fromstart<CR>

highlight link VueValue Number
highlight link VueAttr htmlString

" ============================================================================ "
" ===                             AUTOCOMMAND                              === "
" ============================================================================ "

autocmd FileType vue set suffixesadd+=.vue,.js

