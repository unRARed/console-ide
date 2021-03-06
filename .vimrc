" Don't try to be vi compatible
set nocompatible

" Use legacy regex engine for performance
set regexpengine=1

" Color scheme
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" colorscheme Sunburst
colorscheme synthetic

" Show tab indentation
:set list lcs=tab:\|\ 

" Helps force plugins to load correctly when it is turned back on below
filetype off

" NetRW File Explorer

" Show nested directory structure
let g:netrw_liststyle=3
" Hide (mostly) useless header info
let g:netrw_banner=0
" Hide some files
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
autocmd FileType netrw set nolist

" For plugins to load correctly
filetype plugin indent on

" Pathogen (for plugins in .vim/bundle/*
execute pathogen#infect()

" Speed up CTRLP plugin
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'

  " persist ctrlp cache...
  let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Turn on syntax highlighting
syntax on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Hybrid relative line numbers!
" (disabled due to bad performance on budget, mid14/15 macbooks)
" set number relativenumber
" set nu rnu
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

" Encoding
set encoding=utf-8

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden
" Cycle between buffers with Ctrl+j/k
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>


" Rendering
set ttyfast
set lazyredraw

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" know when violating 80 columns
set cc=80

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Whitespace
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noshiftround
set autoindent
set expandtab

" auto indentation is shit
filetype indent off

" no swap
set nobackup
set nowritebackup
set noswapfile

" Extension-specific tweaks

" Disable quote concealing in JSON files
let g:vim_json_conceal=0

" Plugin customization

let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall " use Emmet only for HTML
