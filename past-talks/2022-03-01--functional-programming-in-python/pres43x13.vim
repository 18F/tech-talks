set nonumber
set laststatus=0
set noshowcmd
set noshowmode
set noruler
set termguicolors
syntax on
:set listchars=tab:▸-
:set list
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smarttab
:set expandtab
:set smartindent
:set backspace=indent,eol,start
:nnoremap <Space> <C-F>
:nnoremap <S-Space> <C-B>
:nnoremap <S-CR> o<Esc>
:highlight EndOfBuffer guifg=#000000
:highlight Cursor guifg=#000000 guibg=#000000 ctermfg=black ctermbg=black
:highlight Cursor blend=100 guifg=#000000 guibg=#000000
:highlight CursorLine blend=100 guifg=#000000 guibg=NONE
:highlight EndOfBuffer guifg=#000000
:set guicursor=n:block-Cursor
:ALEDisableBuffer
:set ft=python
:syn region  pythonString matchgroup=pythonTripleQuotes
      \ start=+[uU]\=\z('''\|"""\)+ skip=+\\["']+ end="\z1" keepend concealends
      \ contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell
