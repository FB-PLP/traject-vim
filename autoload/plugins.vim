" vundle - our plugin manager
Plugin 'VundleVim/Vundle.vim'

" vim-ruby provides path support for ruby files in Vim
Plugin 'vim-ruby/vim-ruby'

" vim-rails adds easy way to regenerate tags
Plugin 'tpope/vim-rails'

" vim-bundler sets the location of tags in Vim
Plugin 'tpope/vim-bundler'

" git grep
Plugin 'tpope/vim-fugitive'

"  a file system explorer
if has('nvim')
  Plugin 'Shougo/defx.nvim'
else
  Plugin 'Shougo/defx.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plugin 'junegunn/fzf'

" Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" One Dark syntax theme
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'

" Support Rubocop
Plugin 'dense-analysis/ale'
