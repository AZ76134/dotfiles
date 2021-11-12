local remap = vim.api.nvim_set_keymap

local function replace_keycodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.tab_binding()
  if vim.fn.pumvisible() ~= 0 then
    return replace_keycodes "<C-n>"
  elseif vim.fn["vsnip#available"](1) ~= 0 then
    return replace_keycodes "<Plug>(vsnip-expand-or-jump)"
  else
    return replace_keycodes "<Plug>(Tabout)"
  end
end

function _G.s_tab_binding()
  if vim.fn.pumvisible() ~= 0 then
    return replace_keycodes "<C-p>"
  elseif vim.fn["vsnip#jumpable"](-1) ~= 0 then
    return replace_keycodes "<Plug>(vsnip-jump-prev)"
  else
    return replace_keycodes "<Plug>(TaboutBack)"
  end
end

remap('n', ';', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader =';'

-- nohl
remap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true})

-- explorer
remap('n', '<Leader>e', ':CHADopen<CR>', { noremap = true, silent = true})

-- window switch
remap('n', '<C-h>', '<C-w>h', { silent = true })
remap('n', '<C-j>', '<C-w>j', { silent = true })
remap('n', '<C-l>', '<C-w>l', { silent = true })
remap('n', '<C-k>', '<C-w>k', { silent = true })

-- indent
remap('v', '<', '<gv', { noremap = true, silent = true})
remap('v', '>', '>gv', { noremap = true, silent = true})

-- escape
--remap('i', 'jk', '<ESC>', { noremap = true, silent = true})
--remap('i', 'kj', '<ESC>', { noremap = true, silent = true})

-- move line
remap('x', 'J', ':move \'<+1<CR>gv-gv\'', { noremap = true, silent = true})
remap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true})

-- telescope
remap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true})
remap('n', '<Leader>fr', ':Telescope live_grep<CR>', { noremap = true, silent = true})
remap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true})

-- toggle term

--toggleterm = require('plugins/toggleterm')
