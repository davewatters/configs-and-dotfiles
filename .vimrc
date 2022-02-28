"
" Vim Config
" Basic setup - for use without plugins
"
" Mac & Linux:  ~/.vimrc
" Windows:      $HOME\_vimrc [ C:\Users\<username>\_vimrc ]
"

" Make backspace key behave
set backspace=indent,eol,start

" Show line numbers on the left
" cmd to toggle on/off  :set nu!
set number
  
" Syntax highlighting
syntax on

" Defualt ruler: line,col & rel pos in file
" approx default rulerformat=%l,%c%V%=%P
set ruler

" Statusline, show always
" set statusline+=\[\ %(%l\/%L,%c%V%)\ %P\] " [ line/tot_lines,col_no pos]
set laststatus=2
set statusline=
set statusline+=\[Ln\ %(%l\/%L,Col\ %c%V%)\] " [ line/tot_lines,col_no ]
set statusline+=%F                           " full file path


" Configure tabs as spaces
set vartabstop=   " clear 
set tabstop=4     " size of hard tabstop (\t)
set softtabstop=2 " the number of columns for a tab
set expandtab     " use spaces instead of tab chars
set shiftwidth=2  " size of indent
set autoindent    " copy indent from current line to next
set smarttab	  " insert spaces to next indent
