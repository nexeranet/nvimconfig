let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_delay = 400
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
nmap <leader>e :ALEDetail<CR>

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
