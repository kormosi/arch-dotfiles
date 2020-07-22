call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'pechorin/any-jump.vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'

" Colorschemes
Plug 'morhetz/gruvbox'
call plug#end()

" Deoplete config
let g:deoplete#enable_at_startup = 1

" FZF config
nmap <C-f> :Files<CR>

" colorscheme
colorscheme gruvbox

" set mouse support
set mouse=a

"vertically split new panes to right
set splitright

"horizontally split new panes to bottom
set splitbelow

" enable syntax highlighting
syntax enable

" enable cursorline
set cursorline

" show line numbers
set number relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" Start searching before pressing enter.
set incsearch
set nohlsearch

" Always show at least n lines above/below the cursor.
set scrolloff=10

" Ignore case when searching.
:set ignorecase

" draws a colored column on 79th line 
" set colorcolumn=79

" enable all Python syntax highlighting features
let python_highlight_all = 1

" map window switching to vim keys
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" enable above windows switching in insert mode too       
imap <C-w> <C-o><C-w>                                                                     
" execute current buffer in python by pressing F5   
nnoremap <buffer> <F5> :exec '!clear;python' shellescape(@%, 1)<cr>
"imap <F5> <Esc>:w<CR>:!clear;python %<CR>

" toggle NerdTree                                                                       
nmap <C-n> :NERDTreeToggle<CR>                                                            
" toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" Reformat current buffer using Black.
nmap <F11> :exec '!black %'<cr>

" Don't use swap files
set noswapfile

" code folding options
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2 

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Don't display docstring window popup during completion
autocmd FileType python setlocal completeopt-=preview

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Remap copying to general + register.
map <Leader>c V "+y
vnoremap <Leader>c "+y
map <Leader>v "+p

" Jedi settings
" disable autocompletion, cause we use deoplete for completion
"let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

function! Debug()
    r~/code/python_debug.txt 
endfunction

nmap <Leader>x :call Debug()<CR>

" Look for a tags file in the directory of the current file, in the current directory 
" and up until $HOME, stopping on the first hit.
set tags=./tags,tags;$HOME

" YCM settings
" don't show preview
" set completeopt-=preview
" show preview as popup instead of buffer
"set completeopt+=popup

