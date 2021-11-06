" plugins
"
if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'vim-test/vim-test'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'fatih/vim-go'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'jghauser/mkdir.nvim'
  Plug 'max397574/better-escape.nvim'

endif


call plug#end()

" colors
"
"set t_Co=256
"set background=dark
"colorscheme PaperColor

" settings
"
filetype on
filetype plugin on
filetype indent on
set nu


