nnoremap <tab> gt

" NERDTree as the file explorer
nnoremap <c-n> :NERDTreeTabsToggle<cr>
nnoremap <c-b> :CtrlPBuffer<cr>
nnoremap <c-f> :CtrlP<cr>
nnoremap <c-t> :CtrlPTag<cr>

nnoremap <c-j> <c-w>j<c-w>_
nnoremap <c-k> <c-w>k<c-w>_
nnoremap <c-h> <c-w>h<c-w>_
nnoremap <c-l> <c-w>l<c-w>_

"Shift + Tab to switch to previous open buffer
nnoremap <s-tab> :bprevious!<cr>
nnoremap <tab> :bnext!<cr>

nnoremap <c-d> :bd<cr>
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
