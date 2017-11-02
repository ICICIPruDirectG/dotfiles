" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" general-purpose command-line fuzzy finder
Plug '/home/flashman/.fzf/bin/fzf'
Plug 'junegunn/fzf'

call plug#end()

" fzf keybinds
set rtp+=~/.fzf/bin/fzf
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
nmap <Leader>a :Ag<CR>

" the basics
syntax on " syntax highighting
set number " show line numbers
set showcmd " show command in bottom bar
filetype indent on " load filetype-specific indent files
set wildmenu " automplete things like filenames
set showmatch " highlight matching pareens, etc
set foldenable " enable folding
nnoremap <space> za " space now opens/closes folds
set foldmethod=indent " fold based on indent level
" the contraversial
set tabstop=2 shiftwidth=2 expandtab
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
