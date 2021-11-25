local cmd = vim.api.nvim_command
local fn = vim.fn
local helpers = require 'helpers'

local install_path = helpers.path.join(fn.stdpath('data'), '/site/pack/packer/start/packer.nvim')

if fn.empty(fn.glob(install_path)) > 0 then
  cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  cmd('packadd packer.nvim')
end

local packer = require 'packer'
packer.init({
  compile_path = helpers.path.join(fn.stdpath('config'), '/lua/packer_compiled.lua')
})

return packer.startup(function()
  use 'wbthomason/packer.nvim' -- packer can manage itself
  -- startup cache
  use 'lewis6991/impatient.nvim'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- explorer
  use {'ms-jpq/chadtree', branch='chad', run='python3 -m chadtree deps' }
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }
  
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'mfussenegger/nvim-lint'
  
  use 'onsails/lspkind-nvim'
  use 'ray-x/lsp_signature.nvim'
  use {'folke/trouble.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
  use 'onsails/diaglist.nvim'

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  use 'windwp/nvim-autopairs'

  -- icons
  use 'kyazdani42/nvim-web-devicons'
  use { 'yamatsum/nvim-nonicons', requires = {'kyazdani42/nvim-web-devicons'}}

  -- colorscheme
  use {'ellisonleao/gruvbox.nvim', requires = {"rktjmp/lush.nvim"}}
  use {'ishan9299/nvim-solarized-lua'}
  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow'
  use 'romgrk/nvim-treesitter-context'
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- better escape
  use "max397574/better-escape.nvim"

  -- telescope
  use { 'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
  -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-fzy-native.nvim', required = {'nvim-telescope/nvim-telescope'}}
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
  use { 'nvim-telescope/telescope-symbols.nvim', require = {'nvim-telescope/nvim-telescope'} }
  use { 'cljoly/telescope-repo.nvim', require = {'nvim-telescope/nvim-telescope'} }
  use {
    'sudormrfbin/cheatsheet.nvim',
    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }
  -- comment
  use 'numToStr/Comment.nvim'
  -- gitsign
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  -- status line
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- toggle term
  use {"akinsho/toggleterm.nvim"}

  -- faster filetype loading
  use 'nathom/filetype.nvim'

  -- dashboard
  use 'glepnir/dashboard-nvim'
  -- better quick fix
  use 'kevinhwang91/nvim-bqf'
  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- session management
  use 'Shatur/neovim-session-manager'
  
  -- tabout
  use 'abecodes/tabout.nvim'

  -- whichkey
  use 'folke/which-key.nvim'
  -- testing
  use 'vim-test/vim-test'
  -- dap
  use 'mfussenegger/nvim-dap'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'theHamsta/nvim-dap-virtual-text'
  -- undo tree
  use 'mbbill/undotree'
  -- light speed
  use 'ggandor/lightspeed.nvim'
  -- buffer
  use 'kazhala/close-buffers.nvim'
  -- window stabilize
  use 'luukvbaal/stabilize.nvim'
  -- mkdir
  use {
    'jghauser/mkdir.nvim',
    config = function()
      require('mkdir')
    end
  }
end)

