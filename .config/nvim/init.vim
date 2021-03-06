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
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-rooter'
Plug 'wellle/context.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'APZelos/blamer.nvim'
" Colorschemes
Plug 'morhetz/gruvbox'


call plug#end()

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

" Ignore case when searching.
:set ignorecase

" Always show at least n lines above/below the cursor.
set scrolloff=7

" enable all Python syntax highlighting features
let python_highlight_all = 1

"" allows navigating soft wraps with j and k but 10j still uses lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" map window switching to vim keys, if there's no key in the desired
" direction, create it
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>

" enable above windows switching in insert mode too       
imap <C-w> <C-o><C-w>                                                                     

" execute current buffer in python by pressing F5   
nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
"imap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Reformat current buffer using Black.
nmap <F11> :exec '!black %'<cr>

" Don't use swap files
set noswapfile

" code folding options
set foldlevel=2
set nofoldenable
set foldmethod=indent
nnoremap <space> za
vnoremap <space> zf

" Don't display docstring window popup during completion
autocmd FileType python setlocal completeopt-=preview

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Remap copying to general + register.
noremap <Leader>y V "+y
vnoremap <Leader>y "+y
noremap <Leader>c V "+y
vnoremap <Leader>c "+y
noremap <Leader>v "+p

" Insert debugging python snippet
function! Debug()
    r~/code/python_debug.txt 
endfunction
nmap <Leader>x :call Debug()<CR>

" Look for a tags file in the directory of the current file, in the current directory 
" and up until $HOME, stopping on the first hit.
set tags=./tags,tags;$HOME

"" Restore last cursor position and marks on open
au BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif


""""""""""""""""""" 
" Plugins settings:  

" Jedi settings
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Deoplete config
let g:deoplete#enable_at_startup = 1
" <TAB>: completion 
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" FZF settings
nnoremap <C-f> :Files<CR>
nnoremap <C-g> :Rg<CR>

" NerdTree settings
" toggle NerdTree                                                                       
nmap <C-n> :NERDTreeToggle<CR>                                                            

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show git blame
nmap <Leader>b :G blame<CR>

" Remap NERDComment to toggle comments.
nnoremap <Leader><space> :call NERDComment(0,"toggle")<CR>

let g:blamer_enabled = 0
let g:blamer_delay = 500
