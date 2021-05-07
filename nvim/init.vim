call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'megantiu/true.vim'
Plug 'junegunn/goyo.vim'
Plug 'gyim/vim-boxdraw'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'WolfgangMehner/vim-plugins'
Plug 'matze/vim-tex-fold'

" Syntax related
Plug 'Mxrcon/nextflow-vim'
Plug 'vim-python/python-syntax'
Plug 'lervag/vimtex'

" UI related
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'



call plug#end()
" LaTeX
let g:tex_flavor='latex'
  let g:vimtex_view_method='zathura'
  let g:vimtex_quickfix_mode=0
  set conceallevel=1
  let g:tex_conceal='abdmg'
  let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'output',
  \}
" nerd tree
let g:NERDTreeShowHidden = 1
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeIgnore = []
  let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  nnoremap <silent> <A-b> :NERDTreeToggle<CR>
" keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" FZF
  nnoremap <C-t> :FZF<CR>
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \}
  " requires silversearcher-ag
  " used to ignore gitignore files
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"style 
set number

" enable 24bit true color
 if (has("termguicolors"))
   set termguicolors
 endif

 " enable the theme
syntax enable
colorscheme true
