set nocompatible
filetype off

let s:project_root = '~/traject-vim'
let s:bundle_dir = s:project_root.'/bundle'
set backupdir=~/traject-vim/backup//
set directory=~/traject-vim/swap//
set undodir=~/traject-vim/undo//

" set the runtime path to include Vundle and initialize
execute 'set rtp+='.s:project_root.'/bundle/Vundle.vim'
execute 'set rtp+='.s:project_root.'/bundle/neoclide/coc.nvim'
call vundle#rc(s:bundle_dir)

call vundle#begin()
execute 'source '.s:project_root.'/autoload/plugins.vim'
call vundle#end()

execute 'source '.s:project_root.'/autoload/indent.vim'
execute 'source '.s:project_root.'/autoload/key_mapping/navigation.vim'
execute 'source '.s:project_root.'/autoload/theme.vim'
execute 'source '.s:project_root.'/autoload/traject.vim'
set mouse=a
