Traject Vim
------------
A Vim IDE built for [Traject](https://github.com/FB-PLP/traject):

Frontend: (not well supported yet)
- ES6
- React
- Flow

Backend:
- Ruby
- Rails
- Sorbet

### Installation
```
git clone git@github.com:FB-PLP/traject-vim.git ~/traject-vim
cd ~/traject-vim
make install
```
Use `make uninstall` to swap back the origional `vim` / `neovim` settings.


### Features & Shortcuts
#### File Tree: [Defx](https://github.com/Shougo/defx.nvim)
`<ctrl>` + `n`
Press again to toggle.
[![asciicast](https://asciinema.org/a/bJKSjKkFLvmC2q6MpUGRdzbgP.svg)](https://asciinema.org/a/bJKSjKkFLvmC2q6MpUGRdzbgP)

#### Fuzzy File Finder: [fzf](https://github.com/junegunn/fzf)
`<ctrl>` + `p`
[![asciicast](https://asciinema.org/a/vgr9xCMoC8pI0Sr8ArY3ZDcE6.svg)](https://asciinema.org/a/vgr9xCMoC8pI0Sr8ArY3ZDcE6)

#### Git Grep [fugitive.vim](https://github.com/tpope/vim-fugitive)
- `:GG <pattern>`
- Make selection in the visual mode, then entre `GG`
[![asciicast](https://asciinema.org/a/CqpHyu9xxDjMbhVzGTy9gV7Ap.svg)](https://asciinema.org/a/CqpHyu9xxDjMbhVzGTy9gV7Ap)

### Sorbet & Rubocop [ALE](https://github.com/dense-analysis/ale)
- Hover and reveal sorbet type
- `<ctrl>` + `<space>`: Quick Fix Box
[![asciicast](https://asciinema.org/a/QuWODYafniJBWeOJ6CCYxjjZo.svg)](https://asciinema.org/a/QuWODYafniJBWeOJ6CCYxjjZo)

### Go To Defition [ctags](https://linuxhint.com/integrating_vim_ctags/) + [vim-rails](https://github.com/tpope/vim-rails)
- `<ctrl>` + `]`: Go to definition (ctags)
- `gd`: Go to definition (ale: sorbet)
- `<ctrl>` + `o`: Go back to the previous location (undo the jump)
- `<ctrl>` + `i`: Undo `<ctrl>` + `o` (redo the jump)
[![asciicast](https://asciinema.org/a/R2DpUouRlohV3VqyUw67j7s5k.svg)](https://asciinema.org/a/R2DpUouRlohV3VqyUw67j7s5k)
