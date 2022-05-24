call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'megantiu/true.vim'
Plug 'junegunn/goyo.vim'
Plug 'gyim/vim-boxdraw'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
"Plug 'yuttie/comfortable-motion.vim'
Plug 'Mxrcon/nextflow-vim'
Plug 'WolfgangMehner/vim-plugins'
Plug 'vim-python/python-syntax'
Plug 'lervag/vimtex'
"Plug 'Konfekt/FastFold'
Plug 'matze/vim-tex-fold'
" UI related
Plug 'chriskempson/base16-vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'
" Autocomplete
"Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-jedi'



Plug 'pprovost/vim-ps1'
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
" Lualine
lua << END
require('lualine').setup()
require('lualine').setup {
options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

END

" enable the theme
syntax enable
colorscheme dracula
