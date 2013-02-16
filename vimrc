call pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype off

syntax on
filetype plugin indent on

set expandtab softtabstop=2 tabstop=2 shiftwidth=2
set t_Co=256 " 256 colors
set number  " show line numbers
set ruler  " show line and column numbers
set encoding=utf-8  " set default encoding to UTF-8 filetype plugin indent on

set visualbell

set list  " show invisible characters
set listchars="  " reset the listchars
set listchars=tab:\ \  " a tab should display as "  "
set listchars+=trail:·  " show trailing spaces as dots
set listchars+=extends:>  " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<  " The character to show in the last column when wrap is off and the line continues beyond the right of the screen

" searching
set hlsearch  " highlight matches
set incsearch  " incremental searching
set ignorecase  " searches are case insensitive
set smartcase  " unless they contain at least one capital letter

" allow switching of buffers before saving them
set hidden

" ignore these file types when tab completing or globing
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem  " disable output and VCS files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz  " disable archive files
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/* " ignore bundler and sass cache
set wildignore+=*/public/system/*  " ignore assets
set wildignore+=*.swp,*~,._*  " disable temp and backup files

" status line
set laststatus=2  " always show the status bar

" autocommands
au BufNewFile,BufRead *.json set ft=javascript  " treat JSON files like JavaScript
au VimResized * wincmd =  " resize splits when window size changes
au BufWritePre * :%s/\s\+$//e  " remove trailing whitespace on save


"leader is <space>
let mapleader=" "

"ctrl-p mappings
let g:ctrlp_map = '<leader>t'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn\|tmp$'


" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" move around windows easier
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

" easy splitting
map <leader>s :split<cr>
map <leader>v :vsplit<cr>


" format the entire file
nmap <leader>c ggVG=

" start a :e at the directory of the current open file
cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
"
" insert the current directory into a command-line path
cmap <C-P> <C-R>=expand("%:p:h") . "/"<CR>

" adjust viewports to the same size
map <Leader>= <C-w>=

" keep visual selection when indenting or outdenting
vmap <Tab> >gv
vmap <S-Tab> <gv

" search using ack
map <leader>f :Ack!<space>
" search for the term under the cursor
nmap <C-S-f> :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ack! "<C-R><C-W>"<CR>;
" search for the highlighted term
vmap <C-S-f> y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ack! "<C-R>=escape(@", '\\"#')<CR>"<CR>;
" close the quickfix window
map <leader>q :ccl<CR>

" remove highlighted term
nnoremap <silent> <Leader>* :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" nerd commenter
" """"""""""""""""""""""""""""""""""""""""""""""
" toggle comments
map <Leader>/ <plug>NERDCommenterToggle


set history=10000
set backspace+=start,eol,indent
hi CursorLine cterm=none ctermbg=none
hi CursorColumn cterm=none ctermbg=darkred
set hlsearch
set cursorline
set number

"only use close with html & xml type files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

filetype plugin on
set ofu=syntaxcomplete#Complete

autocmd	FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
highlight Pmenu ctermbg=238 gui=bold
