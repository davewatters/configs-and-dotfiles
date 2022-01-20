"
" Vim Config
" Basic setup - for use without plugins
"

" Show line numbers on the left
" cmd to toggle on/off  :set nu!
set number                
" Syntax highlighting
syntax on
" Defualt ruler: line,col & rel pos in file
" approx default rulerformat=%l,%c%V%=%P
set ruler
" Statusline: show always; [<tot_ln_cnt>]<full_filepath>
set laststatus=2
set statusline=
set statusline+=%f                     " full file path
set statusline+=%[%l\/%L,%c%V%=%P]   " line/tot_lines, col > pos in file

" Show a line to highlight column 80
" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey
