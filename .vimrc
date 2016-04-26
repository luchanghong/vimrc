" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" -----------------自动完成插件-----------------
NeoBundle 'neocomplcache'

let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" -----------------git diff插件-----------------
NeoBundle 'airblade/vim-gitgutter'

set updatetime=250

" -----------------状态栏插件-----------------
NeoBundle 'powerline/powerline'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

set laststatus=2
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap 1 <Plug>AirlineSelectTab1
nmap 2 <Plug>AirlineSelectTab2
nmap 3 <Plug>AirlineSelectTab3
nmap 4 <Plug>AirlineSelectTab4
nmap 5 <Plug>AirlineSelectTab5
nmap 6 <Plug>AirlineSelectTab6
nmap 7 <Plug>AirlineSelectTab7
nmap 8 <Plug>AirlineSelectTab8
nmap 9 <Plug>AirlineSelectTab9

" 设置切换Buffer快捷键"
" nnoremap <C-N> :bn<CR>
" nnoremap <C-P> :bp<CR>
nmap - <Plug>AirlineSelectPrevTab
nmap = <Plug>AirlineSelectNextTab

" -----------------自动补全括号-----------------
NeoBundle 'spf13/vim-autoclose'

" -----------------目录结构-----------------
NeoBundle 'scrooloose/nerdtree'

" autocmd vimenter * NERDTree
map <C-E> :NERDTreeToggle<CR>

" =================ENDING-自定义插件-ENDING=================
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" 手动配置(全局)
" 兼容性
set nocompatible
set backspace=2

" 编辑时
set encoding=utf8
set fileencoding=utf8
set nobackup
set noswapfile

" 语法高亮
syntax on
syntax enable

" 空格和tab
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

" 显示
set number
set hlsearch

" 缩进
set autoindent
set smartindent
set foldmethod=indent
set foldlevel=99

" 按键映射
" inoremap (  ()<left>

colorscheme peaksea
