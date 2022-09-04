" ctrl+/ comments
map <C-/> :Commentary<CR>


" Turn the word under cursor to upper case
inoremap <c-u> <Esc>viwUea

" Turn the current word into title case
inoremap <c-t> <Esc>b~lea

" Paste non-linewise text above or below current cursor,
" see https://stackoverflow.com/a/1346777/6064933
nnoremap <leader>p m`o<ESC>p``
nnoremap <leader>P m`O<ESC>p``

" " Shortcut for faster save and quit
" nnoremap <silent> <leader>w :<C-U>update<CR>
" Saves the file if modified and quit
nnoremap <silent> <leader>q :<C-U>x<CR>
" Quit all opened buffers
nnoremap <silent> <leader>Q :<C-U>qa!<CR>

" Insert a blank line below or above current line (do not move the cursor),
" see https://stackoverflow.com/a/16136133/6064933
nnoremap <expr> <Space>o printf('m`%so<ESC>``', v:count1)
nnoremap <expr> <Space>O printf('m`%sO<ESC>``', v:count1)

" Insert a space after current character
nnoremap <Space><Space> a<Space><ESC>h

" Do not include white space characters when using $ in visual mode,
" see https://vi.stackexchange.com/q/12607/15292
xnoremap $ g_


" Jump to matching pairs easily in normal mode
nnoremap <Tab> %


" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

" Find and replace (like Sublime Text 3)
nnoremap <C-H> :%s/
xnoremap <C-H> :s/

" Clear highlighting
if maparg(',<space>', 'n') ==# ''
  nnoremap <silent> ,<space> :<C-U>nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR>,<space>
endif

" move selected line

function! SwitchLine(src_line_idx, direction) abort
  if a:direction ==# 'up'
    if a:src_line_idx == 1
        return
    endif
    move-2
  elseif a:direction ==# 'down'
    if a:src_line_idx == line('$')
        return
    endif
    move+1
  endif
endfunction


function! MoveSelection(direction) abort
  " only do this if previous mode is visual line mode. Once we press some keys in
  " visual line mode, we will leave this mode. So the output of `mode()` will be
  " `n` instead of `V`. We can use `visualmode()` instead to check the previous
  " mode, see also https://stackoverflow.com/a/61486601/6064933
  if visualmode() !=# 'V'
    return
  endif

  let l:start_line = line("'<")
  let l:end_line = line("'>")
  let l:num_line = l:end_line - l:start_line + 1

  if a:direction ==# 'up'
    if l:start_line == 1
      " we can also directly use `normal gv`, see https://stackoverflow.com/q/9724123/6064933
      normal! gv
      return
    endif
    silent execute printf('%s,%smove-2', l:start_line, l:end_line)
    normal! gv
  elseif a:direction ==# 'down'
    if l:end_line == line('$')
      normal! gv
      return
    endif
    silent execute printf('%s,%smove+%s', l:start_line, l:end_line, l:num_line)
    normal! gv
  endif
endfunction




" Move current line up and down
nnoremap <silent> <A-k> <Cmd>call SwitchLine(line('.'), 'up')<CR>
nnoremap <silent> <A-j> <Cmd>call SwitchLine(line('.'), 'down')<CR>


" Move current visual-line selection up and down
xnoremap <silent> <A-k> :<C-U>call MoveSelection('up')<CR>
xnoremap <silent> <A-j> :<C-U>call MoveSelection('down')<CR>

" Replace visual selection with text in register, but not contaminate the
" register, see also https://stackoverflow.com/q/10723700/6064933.
xnoremap p "_c<ESC>p


" Break inserted text into smaller undo units.
for ch in [',', '.', '!', '?', ';', ':']
  execute printf('inoremap %s %s<C-g>u', ch, ch)
endfor

