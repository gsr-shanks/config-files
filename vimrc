" Automatically removing all trailing whitespace to a particular filetype in
" an autocmd
autocmd BufWritePre *.py :%s/\s\+$//e

" Wrap text at 72 characters for svn and git commits
autocmd Filetype gitcommit set textwidth=72
autocmd FileType svn setlocal textwidth=72

" In addition the python.vim indent plugin I downloaded, PEP-8 says max line
" length should be 79 characters
autocmd FileType python setlocal textwidth=79

set wrap
set linebreak
set shiftwidth=4
set textwidth=78
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set history=1000

" Show matching bracket when a bracket statement is closed.
set showmatch

" Syntax colouring makes vim pretty like a pony!
if has("syntax")
    syntax on
endif

" The advantage of having the status line displayed always is, you can see the current mode, file name, file status, ruler, etc.
set laststatus=2

" Highlight search terms and show the first match for a pattern as I type
set hlsearch
set incsearch

" Ignore case when searching
set ignorecase

" Don't want to expand tabs for Makefiles.
autocmd FileType make setlocal noexpandtab shiftwidth=8 tabstop=8
