" Defx as the file explorer
nnoremap <silent> <c-n> :<C-U>:Defx -resume -buffer_name=explorer -split=vertical -vertical_preview<CR>
nnoremap <silent><c-p> :FZF<cr>

nnoremap <silent><c-j> <c-w>j<c-w>_
nnoremap <silent><c-k> <c-w>k<c-w>_
nnoremap <silent><c-h> <c-w>h<c-w>_
nnoremap <silent><c-l> <c-w>l<c-w>_

"Shift + Tab to switch to previous open buffer
nnoremap <silent><s-tab> :bprevious!<cr>
nnoremap <silent><tab> :bnext!<cr>

nnoremap <silent>q :bd<cr>

set splitright

function! QuickFix_toggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            return
        endif
    endfor

    copen
endfunction

nnoremap <c-space> :call QuickFix_toggle()<cr>
nnoremap gd :ALEGoToDefinition<cr>
