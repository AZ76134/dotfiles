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
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
  },
}
telescope.load_extension('fzf')

local ok, cheatsheet = pcall(require, 'cheatsheet')
if (not ok) then return end
cheatsheet.setup{}
