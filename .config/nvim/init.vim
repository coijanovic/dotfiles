" Christophs vimrc

filetype plugin indent on    " Load plugins according to detected filetype.
syntax on                    " Enable syntax highlighting.
set relativenumber           " Show line-numbers
set hidden                   " Switch buffers withous saving

set tabstop=4                " The width of a TAB is set to 4.
set shiftwidth=4             " Indents will have a width of 4
set softtabstop=4            " Sets the number of columns for a TAB
set expandtab                " Expand TABs to spaces

set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undodir=~/.vim/undo

nmap <Space> <Plug>yankstack_substitute_older_paste
nmap <S-Space> <Plug>yankstack_substitute_newer_paste
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>m :Marks<CR>
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>n :noh<CR> 
nnoremap <Leader>t :TableModeToggle<CR> 

nnoremap <Leader>c :silent ! make<CR>

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ledger/vim-ledger'
Plug 'coijanovic/vim-umlauts'

call plug#end()

colorscheme nord
call yankstack#setup()  

