inoremap jk <ESC>
let mapleader = "'"
syntax on 
set number 
set relativenumber
set noswapfile 
set hlsearch 
set ignorecase 
set incsearch
set nocompatible
set nohlsearch
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>l :Buffers<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-g> :NERDTreeFind<CR>
nnoremap <silent> <Leader>r :GoRun<CR>
nnoremap <silent> <Leader>b :GoBuild<CR>
nnoremap <silent> <Leader>i :GoInstall<CR>
nnoremap <silent> <Leader>t :GoTest<CR>
nnoremap <silent> <Leader>tt :GoTestFunc<CR>
nnoremap <silent> <Leader>d :GoDef<CR>
nnoremap <silent> <Leader>s :GoDoc<CR>
nnoremap <silent> <Leader>a :GoLint<CR>
nnoremap <silent> <Leader>aa :GoErrCheck<CR>
nnoremap <silent> <Leader>aaa :GoVet<CR>

call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
call plug#end() 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_args = "--ignore=E402,E501,E221"
let g:syntastic_python_checkers=['flake8']
