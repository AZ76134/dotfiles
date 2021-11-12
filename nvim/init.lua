local disable_distribution_plugins = function()
    vim.g.loaded_gzip = 1
    vim.g.loaded_tar = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_zip = 1
    vim.g.loaded_zipPlugin = 1
    vim.g.loaded_getscript = 1
    vim.g.loaded_getscriptPlugin = 1
    vim.g.loaded_vimball = 1
    vim.g.loaded_vimballPlugin = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_2html_plugin = 1
    vim.g.loaded_logiPat = 1
    vim.g.loaded_rrhelper = 1
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_netrwSettings = 1
    vim.g.loaded_netrwFileHandlers = 1
    vim.g.did_load_filetypes = 1
end

disable_distribution_plugins()
require('plugins/packer')
require('impatient').enable_profile()
require('keymaps')
require('settings')
require('plugins/cmp')
require('plugins/lsp')
require('plugins/blankline')
require('plugins/treesitter')
require('plugins/escape')
require('plugins/autopairs')
require('plugins/telescope')
require('plugins/comment')
require('plugins/gitsigns')
require('plugins/galaxyline')
require('plugins/toggleterm')
require('plugins/startup')
require('theme/colorscheme')
