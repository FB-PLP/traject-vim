set wildignore=/home/dev/traject/.git/*
set wildignore+=/home/dev/traject/node_modules/*
set wildignore+=/home/dev/traject/public/*
set wildignore+=/home/dev/traject/sorbet/*
set wildignore+=/home/dev/traject/vendor/*

let b:ale_linters_ignore = ['brakeman']
let g:ale_set_quickfix = 1
let g:ale_ruby_sorbet_executable = 'bin/sorbet'

call ale#linter#Define('ruby', {
\   'name': 'sorbet-lsp',
\   'lsp': 'stdio',
\   'executable': 'true',
\   'command': 'bin/sorbet --enable-all-experimental-lsp-features',
\   'language': 'ruby',
\   'project_root': '.',
\})
