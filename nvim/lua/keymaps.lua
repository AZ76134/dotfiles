local remap = vim.api.nvim_set_keymap

remap('n', ';', '<NOP>', { noremap = true, silent = true })
remap('n', '.', ';', { noremap = true, silent = true})

vim.g.mapleader =';'

local ok, wk = pcall(require, 'which-key')
if (not ok) then return end

local visual = {
  mode = "v", -- NORMAL mode
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

wk.register{ ['<leader>h'] = {':set hlsearch!<cr>', 'Toggle hightlight search'}}

wk.register{ ['<leader>e'] = {'<cmd>CHADopen<cr>', 'Toggle file explorer'}}

wk.register({
  ['<C-h>'] = {'<C-w>h', 'Switch to left window' },
  ['<C-j>'] = {'<C-w>j', 'Switch to lower window' },
  ['<C-l>'] = {'<C-w>l', 'Switch to right window' },
  ['<C-k>'] = {'<C-w>k', 'Switch to upper window' },
})

wk.register({
  ['<'] = {'<gv', 'Shift context to left' },
  ['>'] = {'>gv', 'Shift context to right' }
}, visual)

wk.register({
  ['<leader>f'] = {
    name='+find',
    f = {'<cmd>Telescope find_files<cr>', 'Find file'},
    o = {'<cmd>Telescope oldfiles<cr>', 'Find recent open file'},
    c = {'<cmd>Telescope current_buffer_fuzzy_find<cr>', 'Find in current buffer'},
    r = {'<cmd>Telescope live_grep<cr>', 'Find grep'},
    b = {'<cmd>Telescope buffers<cr>', 'Find buffer'},
    s = {'<cmd>Telescope session-lens search_session<cr>', 'Find session'},
    m = {'<cmd>Telescope marks<cr>', 'Find marks'},
  }
})

-- buffer line
wk.register({
  [']b'] = {'<cmd>BufferLineCycleNext<cr>', 'Next buffer'},
  ['[b'] = {'<cmd>BufferLineCyclePrev<cr>', 'Previous buffer'},
  ['<leader>1'] = {'<cmd>BufferLineGoToBuffer 1<cr>', 'Go to buffer 1'},
  ['<leader>2'] = {'<cmd>BufferLineGoToBuffer 2<cr>', 'Go to buffer 2'},
  ['<leader>3'] = {'<cmd>BufferLineGoToBuffer 3<cr>', 'Go to buffer 3'},
  ['<leader>4'] = {'<cmd>BufferLineGoToBuffer 4<cr>', 'Go to buffer 4'},
  ['<leader>5'] = {'<cmd>BufferLineGoToBuffer 5<cr>', 'Go to buffer 5'},
  ['<leader>6'] = {'<cmd>BufferLineGoToBuffer 6<cr>', 'Go to buffer 6'},
  ['<leader>7'] = {'<cmd>BufferLineGoToBuffer 7<cr>', 'Go to buffer 7'},
  ['<leader>8'] = {'<cmd>BufferLineGoToBuffer 8<cr>', 'Go to buffer 8'},
  ['<leader>9'] = {'<cmd>BufferLineGoToBuffer 9<cr>', 'Go to buffer 9'},
  ['<leader>b'] = {'<cmd>%bd|e#|bd#<cr>', 'Close all but current buffer'},
})

-- toggleterm
wk.register{ ['<leader>g'] = {'<cmd>lua lazygit_toggle()<cr>', 'Toggle lazy git'}}

-- lsp related
wk.register({
  ['<leader>x'] = {
    name='+trouble',
    x = {'<cmd>Trouble<cr>', 'Open trouble'},
    w = {'<cmd>Trouble lsp_workspace_diagnostics<cr>', 'Open trouble diagnostics for workspace'},
    d = {'<cmd>Trouble lsp_document_diagnostics<cr>', 'Open trouble diagnostics for document'},
    l = {'<cmd>Trouble loclist<cr>', 'Open trouble location list'},
    q = {'<cmd>Trouble quickfix<cr>', 'Open trouble quickfix'},
  }
})
wk.register{ ['gR'] = {'<cmd>Trouble lsp_references<cr>', 'Go to references opened by trouble'}}

wk.register({
 ['<c-g>'] = {'<cmd>lua ToggleQF(true)<cr>', 'Toggle quickfix list'},
})

