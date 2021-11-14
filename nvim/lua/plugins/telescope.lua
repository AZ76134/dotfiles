local ok, telescope = pcall(require, 'telescope')
if (not ok) then return end

local actions = require('telescope.actions')

local trouble = require('trouble.providers.telescope')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["<C-t>"] = trouble.open_with_trouble
      },
      i = {
        ["<C-t>"] = trouble.open_with_trouble
      },
    },
  }
}

local ok, cheatsheet = pcall(require, 'cheatsheet')
if (not ok) then return end
cheatsheet.setup{}
