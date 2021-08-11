syntax on 
set number
set ignorecase
set encoding=utf-8
set numberwidth=1
set mouse=a
set clipboard=unnamedplus
set showcmd
set ruler
set showmatch
set termguicolors
set sw=2
set relativenumber
set noswapfile
set cursorline
set expandtab
set tabstop=3
set shiftwidth=3

set laststatus=2 

call plug#begin("~/.local/share/nvim/plugged")

" Temas
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ghifarit53/tokyonight-vim'

" IDE
Plug 'scrooloose/nerdtree'
" Plug 'jiangmiao/auto-pairs' " Auto cerrado de prentesis y eso
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'pangloss/vim-javascript'
Plug 'KeitaNakamura/neodark.vim'
Plug 'tomasr/molokai'

call plug#end()


" Configuracion de temas
set background=dark " Fondo del tema: dark/light
let ayucolor="dark" " for mirage version of theme
let g:gruvbox_contrast_dark="hard"
let g:tokyonight_style='night' " available: night, storm
let g:tokyonight_enable_italic=0
let g:tokyonight_disable_italic_comment=1
let g:tokyonight_transparent_background=1
let g:neodark#background = '#111111'
colorscheme neodark


" Configuracion de atajos
" Tecla main
let mapleader=" "


" Navegar entre buffers
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>


" Reiniciar NVIM
nmap <F5> :source ~/.config/nvim/init.vim<CR>


" Bloqueo las flecha en modo normal
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>


" Salir y guardar
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>


" Agrandar las zonas al tener 2 o mas archivos abiertos al mismo tiempo
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>




" Nerd Tree
let g:NERDTreeChDirMode = 2  " Cambia el directorio actual al nodo padre actual
map <Leader>b :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p "lo abre en automatico
" Cerrar Nerdtree cuando es lo ultimo
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Evitar que otros buffer se abran y ocupen el espacio de Nerd Tree 
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


" Indent line
" No mostrar en ciertos tipos de buffers y archivos
" let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
" let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']


" Airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1
