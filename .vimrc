call plug#begin()
        Plug 'scrooloose/nerdtree'
        Plug 'vim-airline/vim-airline'
	Plug 'hzchirs/vim-material'
        Plug 'tyrannicaltoucan/vim-quantum'
        Plug 'justinmk/vim-syntax-extra'
        Plug 'junegunn/fzf.vim'
call plug#end()

if !has("gui_running")
    set term=xterm
    set mouse=a
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

" air-line
let g:airline_powerline_fonts = 1

let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

syntax on
set termguicolors
set listchars=trail:.,tab:>\ ,eol:$
set lazyredraw
set laststatus=2
set statusline=%-4m%f\ %y\ \ %=%{&ff}\ \|\ %{&fenc}\ [%l:%c]
set incsearch hlsearch
set nonumber
set backspace=indent,eol,start
set nostartofline
set autoread
set scrolloff=3
set wildmenu wildignorecase wildmode=list:longest,full
set cursorline
set ignorecase smartcase
set showmode showcmd
set shortmess+=I
set hidden
set history=1000
set complete-=i completeopt=menu
set splitright splitbelow
set display+=lastline
set foldenable foldmethod=syntax foldlevelstart=99
set ttimeoutlen=50
set switchbuf=useopen
set mouse=a
set breakindent
set autoindent
set smarttab
set updatetime=500
set synmaxcol=400
set encoding=utf-8
set breakindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set noswapfile
set ttyscroll=0


nmap <S-T> :NERDTreeToggle<CR>
nmap <S-F> :NERDTreeFocus<CR>
nmap <F1> :tabn 1<CR>
nmap <F2> :tabn 2<CR>
nmap <F3> :tabn 3<CR>
nmap <F4> :tabn 4<CR>
nmap <F5> :tabn 5<CR>
nmap <F6> :tabn 6<CR>
nmap <F7> :tabn 7<CR>
nmap <F8> :tabn 8<CR>
nmap <F9> :tabn 9<CR>
nmap <F10> :tabn 10<CR>
nmap <F11> :tabn 11<CR>
nmap <F12> :tabn 12<CR>

vnoremap <C-u> :norm xx<CR>
vnoremap <C-c> :norm i//<CR>

nnoremap <C-e> <C-w>

" Handle problem with touch BS
inoremap <Char-0x07F> <BS>
nnoremap <Char-0x07F> <BS>

inoremap <C-a> <Home>
cnoremap <C-a> <Home>
inoremap <C-e> <End>
cnoremap <C-e> <End>

nnoremap <A-Up> :m.-2<CR>
nnoremap <A-Down> :m.+1<CR>
vnoremap <A-Up> :'<','>' :m.-2<CR>
vnoremap <A-Down> :m.+1<CR>
" nnoremap <C-f> :noautocmd vimgrep<space>

command -nargs=1 SearchPattern noautocmd vimgrep<space> /<args>/j **/* 
nnoremap <C-f> :SearchPattern | :copen

set background=dark
colorscheme quantum
let g:quantum_italics=1
let g:airline_theme='quantum'
