# lightline-hunks
This plugin provides git hunks and git branch for [lightline](https://github.com/itchyny/lightline.vim).

## Requirements
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)

## Installation
Use a plugin manager you want, like [vim-plug](https://github.com/junegunn/vim-plug):
```viml
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sinetoami/lightline-hunks'
```
Run `:so %` and `:PlugInstall`.

## Configurations
### Set to lightline status
1. Register the components:
```viml
let g:lightline.component_expand = {
  \  'lightline_hunks': 'lightline#hunks#composer',
  \ }
```
2. Add the component to the lightline:
```viml
let g:lightline.active = { 'left': [['lightline_hunks']] }
```

### Global Variables
#### g:lightline#hunks#branch_symbol
Symbol visible to the left of the branch. Default is `⎇ `.

#### g:lightline#hunks#hunk_symbols
Hunk count symbols. Default is `['+', '~', '-']` to `added, changed and deleted` respectivally.
* set as a list: `ĺet g:lightline#hunks#hunk_symbol = ['+', '~', '-']`

## License
[MIT License](LICENSE)
