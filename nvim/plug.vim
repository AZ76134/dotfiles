" plugins
"
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

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
  " Plug 'nvim-lua/completion-nvim'
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
  Plug 'rktjmp/lush.nvim'
  Plug 'ellisonleao/gruvbox.nvim' 
  Plug 'jghauser/mkdir.nvim'
  Plug 'max397574/better-escape.nvim'

  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

  Plug 'abecodes/tabout.nvim'

endif


call plug#end()


" settings
"
filetype on
filetype plugin on
filetype indent on
set nu


