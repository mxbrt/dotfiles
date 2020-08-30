" Vundle
set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')
" Plugins
" Speed up Vim by updating folds only when called-for.
Plug 'Konfekt/FastFold'
" Displays function signatures from completions in the command line.
Plug 'Shougo/echodoc.vim'
" shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'
" Changes Vim working directory to project root
Plug 'airblade/vim-rooter'
" Ranger integration in vim and neovim
Plug 'francoiscabrol/ranger.vim'
" fzf integration
Plug 'junegunn/fzf.vim'
" Theme
Plug 'morhetz/gruvbox'
" LSP Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Vim plugin for intensely orgasmic commenting
Plug 'scrooloose/nerdcommenter'
" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
" Remove trailing spaces
Plug 'ntpeters/vim-better-whitespace'

" Language specific
Plug 'sheerun/vim-polyglot'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
Plug 'tikhomirov/vim-glsl'

" Trial
" surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" The missing motion for Vim
Plug 'justinmk/vim-sneak'
" reveal the commit messages under the cursor
Plug 'rhysd/git-messenger.vim'
" tex support for conceal
Plug 'KeitaNakamura/tex-conceal.vim'
" The ultimate snippet solution for Vim.
Plug 'SirVer/ultisnips'
call plug#end()

" Plugin options
let g:gruvbox_italic= 1
let g:sneak#label = 1
let g:vimtex_view_method="zathura"
let g:rustfmt_autosave = 1

let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:tex_conceal="abdmg"

let g:coc_global_extensions = [
            \ 'coc-diagnostic',
            \ 'coc-python',
            \ 'coc-rust-analyzer',
            \ 'coc-sh',
            \ 'coc-omnisharp',
            \ 'coc-snippets',
            \]

" Language specific
au FileType rust set cc=100
au FileType tex setlocal wrap linebreak nolist

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" sneak
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

"" Key bindings
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap J 8j
nnoremap K 8k

nnoremap Q <Nop>

let mapleader="\<Space>"
nnoremap <Leader>f :Ranger<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>n :lnext<cr>

nnoremap <c-p> :FZF<cr>
nnoremap <c-b> :Buffers<cr>

" let g:coc_snippet_next = '<tab>'

" Terminal bindings
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Settings
syntax on
set conceallevel=1
set termguicolors
set bg=dark
colorscheme gruvbox
set signcolumn=yes

" coc.vim
set updatetime=100
set shortmess+=c
set nobackup
set nowritebackup

" open preview window on bottom
set splitbelow
set mouse=a

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set magic

set number
set scrolloff=3
set sidescroll=3

set ruler
set cc=80
set nowrap

set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch

set t_Co=256
set laststatus=2
set ttimeout
set ttimeoutlen=100

set backspace=indent,eol,start
set smarttab

set nrformats-=octal

set autoread
set fileformats+=mac

set hidden
set wildmenu
set showcmd

set nostartofline
set confirm
set visualbell
set t_vb=
set cmdheight=2
