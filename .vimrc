"
" Vim Config
" Basic setup - for use without plugins
"
" Mac & Linux:  ~/.vimrc
" Windows:      $HOME\_vimrc [ C:\Users\<username>\_vimrc ]
"

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
set statusline+=\[\ %(%l\/%L,%c%V%)\ \] " [ line/tot_lines,col_no ]
set statusline+=%F                      " full file path
