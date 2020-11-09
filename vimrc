set nocompatible
let mapleader="\<space>"
let maplocalleader = "\<space>"
filetype off

" Set up Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" PLUGINS

" Solarized & other visual settings
Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized
let g:solarized_visibility='low'
set guifont=Menlo:h14

" (Un)Commenting
Plugin 'tpope/vim-commentary'

" Cutlass / yoink / etc
Plugin 'svermeulen/vim-cutlass'
nnoremap m d
xnoremap m d
nnoremap mm dd
nnoremap M D
nnoremap gm m
Plugin 'svermeulen/vim-yoink'
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)


"Python-Mode
Plugin 'python-mode/python-mode'
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let python_highlight_all=1
let g:pymode_lint_cwindow = 0
set completeopt=menuone,noinsert

"Svelte
Plugin 'leafoftree/vim-svelte-plugin'

"Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"Repeat
Plugin 'tpope/vim-repeat'

"Sandwich
Plugin 'machakann/vim-sandwich'

"Unimpaired
Plugin 'tpope/vim-unimpaired'

"Abolish
Plugin 'tpope/vim-abolish'

"Tabular
Plugin 'godlygeek/tabular'

"SimplyFold
Plugin 'tmhedberg/SimpylFold'

"Emmet
Plugin 'mattn/emmet-vim'

"VimWiki
Plugin 'vimwiki/vimwiki'
let g:vimwiki_listsyms = ' ○◐●✓'
let g:vimwiki_list = [{'path': '~/.commonplace/', 'auto_tags': 1, 'auto_diary_index': 1, 'auto_generate_tags': 1}]
nmap <leader>wa <plug>VimwikiMakeDiaryNote

"Tagbar
Plugin 'preservim/tagbar'
nmap <F8> :TagbarToggle<CR>

" other tags
set tags+=tags
set tags+=.tags
set tags+=../tags

"Searching
Plugin 'kien/ctrlp.vim'
nnoremap <silent> go :CtrlP<CR>
let g:ctrlp_abbrev = {
    \ 'abbrevs': [
        \{
            \ 'pattern': '^ ',
            \ 'expanded': '',
            \ 'mode': 'fprzc',
        \}
        \]
    \}

" END PLUGINS
call vundle#end()
filetype plugin indent on
runtime macros/matchit.vim

syntax on
set encoding=utf-8
set nocp
set noswapfile


" Basic editor settings
set nojoinspaces "don't add weird extra spaces
set splitbelow
set splitright
set number
set scrolloff=3
set showmode
set showcmd
set cursorline
" set cursorcolumn
set hidden
" fuzzy finding
set path+=**
set wildignore+=*/venv/*,*.swp,*.so,*.zip,*/node_modules/*,*.db
set wildmenu
" set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nu
set undofile
set modelines=0
set ignorecase
set smartcase
set infercase
set gdefault
set incsearch
set showmatch
set hlsearch
set history=200


" Tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set autoread

" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <leader>f za




" Wrapping
set listchars=tab:▸\ ,eol:¬,trail:·
set wrap linebreak nolist
"move around on display lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^


" Remappings
nnoremap Y y$
" LaTeX > dvipdfm compile
" nnoremap <leader>cp :!pdflatex %<cr>
" nnoremap <leader>cx :!xelatex %<cr>
" nnoremap <leader>cc :!xelatex project.tex<cr>
" nnoremap <leader>bb :!bibtex project<cr>
"Very Magic searches
nnoremap / /\v
nnoremap ? ?\v
vnoremap / /\v
vnoremap ? ?\v
nnoremap <leader>s :%s//
" Keep base H/L
nnoremap <leader>H H
nnoremap <leader>L L
" "Hard" left and right
nnoremap H 0
nnoremap L $
" Kill highlighting
nnoremap <leader><space> :noh<cr>
" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Tab-Switching functions {{{
noremap <d-1> 1gt
inoremap <d-1> <esc>:normal 1gt<cr>a
noremap <d-2> 2gt
inoremap <d-2> <esc>:normal 2gt<cr>a
noremap <d-3> 3gt
inoremap <d-3> <esc>:normal 3gt<cr>a
noremap <d-4> 4gt
inoremap <d-4> <esc>:normal 4gt<cr>a
noremap <d-5> 5gt
inoremap <d-5> <esc>:normal 5gt<cr>a
noremap <d-6> 6gt
inoremap <d-6> <esc>:normal 6gt<cr>a
noremap <d-7> 7gt
inoremap <d-7> <esc>:normal 7gt<cr>a
noremap <d-8> 8gt
inoremap <d-8> <esc>:normal 8gt<cr>a
noremap <d-9> 9gt
inoremap <d-9> <esc>:normal 9gt<cr>a
noremap <d-0> 10gt
inoremap <d-0> <esc>:normal 10gt<cr>a
" Buffer switching
nnoremap <leader>a :e #<cr>
nnoremap <leader>d :bd<cr>
" Xelatex compile
nnoremap <leader>x :!xelatex %<cr>
" Go to vimrc
nnoremap <leader>vv :e ~/.vimrc<cr>
nnoremap <leader>vs :source ~/.vimrc<cr>
" Open help in vertical split
cnoreabbrev H vert h
" Better sub-repeat
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" VisualStar
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR> 
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch(cmdtype)
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
    let @s = temp
endfunction


" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7" "Vertical bar in insert mode
	let &t_EI = "\<Esc>]50;CursorShape=0\x7" "Block in normal mode
endif

" GitGutter {{{
highlight clear SignColumn
" highlight GitGutterAdd guibg=green
" highlight GitGutterChange guibg=yellow
" highlight GitGutterDelete guibg=red
" highlight GitGutterChangeDelete guibg=yellow
" }}}

au BufRead,BufNewFile *.svelte setfiletype svelte
