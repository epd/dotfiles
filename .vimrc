set nocompatible
set termguicolors
filetype off

set number relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set nowrap
set list
set backspace=indent,eol,start

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'mhinz/vim-mix-format'
Plugin 'neoclide/coc.nvim'
Plugin 'janko/vim-test'
Plugin 'ntk148v/vim-horizon'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'prettier/vim-prettier'
Plugin 'fatih/vim-go'
Plugin 'dense-analysis/ale'
Plugin 'hashivim/vim-terraform'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()
filetype plugin indent on

let g:mix_format_on_save = 1
let g:indent_guides_enable_on_vim_startup = 1

colorscheme horizon
syntax enable
set path+=**
set ttyfast

" set autochdir
set wildmenu
set wildignore+=node_modules/*,_build/*,deps/*

noremap gf :vertical wincmd f<CR>

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

set splitbelow
set splitright

let &re = 2

set lazyredraw
set cursorline

set clipboard+=unnamedplus

augroup neovim_terminal
  autocmd!

  " Enter Terminal-mode (insert) automatically
  autocmd TermOpen * startinsert

  " Disables number lines on terminal buffers
  autocmd TermOpen * :set nonumber norelativenumber
augroup END

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
endif

" Sets mappings for moving between splits
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l

inoremap <C-h> <Esc><c-w>h
inoremap <C-j> <Esc><c-w>j
inoremap <C-k> <Esc><c-w>k
inoremap <C-l> <Esc><c-w>l

vnoremap <C-h> <Esc><c-w>h
vnoremap <C-j> <Esc><c-w>j
vnoremap <C-k> <Esc><c-w>k
vnoremap <C-l> <Esc><c-w>l

tnoremap <C-h> <c-\><c-n><c-w>h
tnoremap <C-j> <c-\><c-n><c-w>j
tnoremap <C-k> <c-\><c-n><c-w>k
tnoremap <C-l> <c-\><c-n><c-w>l

" Sets mappings for moving between tabs
nnoremap <C-b>h :tabp<CR>
nnoremap <C-b>l :tabn<CR>

inoremap <C-b>h <Esc>:tabp<CR>
inoremap <C-b>l <Esc>:tabn<CR>

vnoremap <C-b>h <Esc>:tabp<CR>
vnoremap <C-b>l <Esc>:tabn<CR>

tnoremap <C-b>h <c-\><c-n>:tabp<CR>
tnoremap <C-b>l <c-\><c-n>:tabn<CR>

" Maps ctrl-b + c to open a new tab window
nnoremap <C-b>c :tabnew +terminal<CR>
tnoremap <C-b>c <C-\><C-n>:tabnew +terminal<CR>

" Maps ctrl-b + " to open a new horizontal split with a terminal
nnoremap <C-b>" :new +terminal<CR>
tnoremap <C-b>" <C-\><C-n>:new +terminal<CR>

" Maps ctrl-b + % to open a new vertical split with a terminal
nnoremap <C-b>% :vnew +terminal<CR>
tnoremap <C-b>% <C-\><C-n>:vnew +terminal<cr>  " Sets mappings for moving between splits
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l

inoremap <C-h> <Esc><c-w>h
inoremap <C-j> <Esc><c-w>j
inoremap <C-k> <Esc><c-w>k
inoremap <C-l> <Esc><c-w>l

vnoremap <C-h> <Esc><c-w>h
vnoremap <C-j> <Esc><c-w>j
vnoremap <C-k> <Esc><c-w>k
vnoremap <C-l> <Esc><c-w>l

tnoremap <C-h> <c-\><c-n><c-w>h
tnoremap <C-j> <c-\><c-n><c-w>j
tnoremap <C-k> <c-\><c-n><c-w>k
tnoremap <C-l> <c-\><c-n><c-w>l

" Sets mappings for moving between tabs
nnoremap <C-b>h :tabp<CR>
nnoremap <C-b>l :tabn<CR>

inoremap <C-b>h <Esc>:tabp<CR>
inoremap <C-b>l <Esc>:tabn<CR>

vnoremap <C-b>h <Esc>:tabp<CR>
vnoremap <C-b>l <Esc>:tabn<CR>

tnoremap <C-b>h <c-\><c-n>:tabp<CR>
tnoremap <C-b>l <c-\><c-n>:tabn<CR>

" Maps ctrl-b + c to open a new tab window
nnoremap <C-b>c :tabnew +terminal<CR>
tnoremap <C-b>c <C-\><C-n>:tabnew +terminal<CR>

" Maps ctrl-b + " to open a new horizontal split with a terminal
nnoremap <C-b>" :new +terminal<CR>
tnoremap <C-b>" <C-\><C-n>:new +terminal<CR>

" Maps ctrl-b + % to open a new vertical split with a terminal
nnoremap <C-b>% :vnew +terminal<CR>
tnoremap <C-b>% <C-\><C-n>:vnew +terminal<cr>

" test runner mappings
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" wildmenu shortcuts
nnoremap <C-p> :e **/*
nnoremap <C-b> :vsplit **/*
nnoremap <C-s> :split **/*

" remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Prettier config override
let g:prettier#config#tab_width = 4
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" ESLint settings
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
"let g:ale_sign_error = '❌'
"let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" coc plugins
let g:coc_global_extensions = [
 \ 'coc-snippets',
 \ 'coc-pairs',
 \ 'coc-json',
 \ 'coc-elixir',
 \ 'coc-go',
 \ ]

" \ 'coc-tsserver',
" \ 'coc-eslint',
" \ 'coc-prettier',

" Use <C-space> to trigger completion.
" inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" run GoImports on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

" auto folds
set foldmethod=indent
set foldlevel=1
set foldclose=all

let g:terraform_fmt_on_save=1

" visual block selection override
nnoremap q <c-V>
