local cmd = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  cmd('packadd packer.nvim')
end

local packer = require 'packer'
packer.init({
  compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
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

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- autopair
  use 'windwp/nvim-autopairs'

  -- icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- colorscheme
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'
  -- better escape
  use "max397574/better-escape.nvim"

  -- telescope
  use { 'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
  -- comment
  use 'numToStr/Comment.nvim'
  -- gitsign
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
  use { 'yamatsum/nvim-nonicons', requires = {'kyazdani42/nvim-web-devicons'}}
  -- status line
  use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  -- toggle term
  use {"akinsho/toggleterm.nvim"}

  -- startup
  use 'henriquehbr/nvim-startup.lua'

  -- faster filetype loading
  use 'nathom/filetype.nvim'

  -- dashboard
  use 'glepnir/dashboard-nvim'
  -- better quick fix
  use 'kevinhwang91/nvim-bqf'
  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
end)

