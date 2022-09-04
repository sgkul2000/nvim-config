
" vim-prettier
" let g:prettier#quickfix_enabled = 0
" let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
" let g:prettier#autoformat = 0
" let g:prettier#autoformat_require_pragma = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
command! -nargs=0 Es :CocCommand eslint.executeAutoFix


" ctrlp
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" let g:ctrlp_custom_ignore = 'node_modules$'

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

lua require'hop'.setup()

nnoremap <silent> <leader>w :HopWord<CR>
