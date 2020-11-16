set nocompatible
filetype off

let s:project_root = '~/traject-vim'
let s:bundle_dir = s:project_root.'/bundle'
set backupdir=~/traject-vim/backup//
set directory=~/traject-vim/swap//
set undodir=~/traject-vim/undo//

" set the runtime path to include Vundle and initialize
execute 'set rtp+='.s:project_root.'/bundle/Vundle.vim'
execute 'set rtp+=/usr/local/opt/fzf'
call vundle#rc(s:bundle_dir)

call vundle#begin()
execute 'source '.s:project_root.'/autoload/plugins.vim'
call vundle#end()

execute 'source '.s:project_root.'/autoload/indent.vim'
execute 'source '.s:project_root.'/autoload/key_mapping/navigation.vim'
execute 'source '.s:project_root.'/autoload/theme.vim'
execute 'source '.s:project_root.'/autoload/traject.vim'
set mouse=a

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️ '
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open', 'vnew')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vnew')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_tree', 'toggle')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

call defx#custom#option('_', {
    \ 'winwidth': 45,
    \ 'split': 'vertical',
    \ 'direction': 'topleft',
    \ 'show_ignored_files': 1,
    \ 'buffer_name': 'explorer',
    \ 'toggle': 1,
    \ 'resume': 1
    \ })

function! s:get_visual_selection()
  let [line_start, column_start] = getpos("'<")[1:2]
  let [line_end, column_end] = getpos("'>")[1:2]
  let lines = getline(line_start, line_end)
  if len(lines) == 0
      return ''
  endif
  let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][column_start - 1:]
  return join(lines, "\n")
endfunction

function! s:git_grep()
  echo s:get_visual_selection()
  execute 'silent Ggrep!' s:get_visual_selection() | cw | redraw!
endfunction

:command -range GG call s:git_grep()
