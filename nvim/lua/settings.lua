
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap  -- set global keymap
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]


-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true         -- enable background buffers
opt.history = 100         -- remember n lines in history
opt.lazyredraw = true     -- faster scrolling
opt.synmaxcol = 240       -- max column for syntax highlight

-----------------------------------------------------------
-- Colorscheme
-----------------------------------------------------------
opt.termguicolors = true      -- enable 24-bit RGB colors
-- opt.background = 'dark'           -- background
-- vim.cmd([[colorscheme gruvbox]])

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = false      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines


-----------------------------------------------------------
-- Better substitution
-----------------------------------------------------------
opt.inccommand = 'split'

-- don't auto commenting new lines
-- cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- remove line lenght marker for selected filetypes
cmd [[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]]

-- 2 spaces for selected filetypes
cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

-----------------------------------------------------------
-- Autocompletion
-----------------------------------------------------------
-- insert mode completion options
opt.completeopt = 'menuone,noselect'

-----------------------------------------------------------
-- Terminal
-----------------------------------------------------------
-- open a terminal pane on the right using :Term
cmd [[command Term :botright vsplit term://$SHELL]]
if require'helpers'.os.is_windows then
  opt.shell = 'cmd'
end

-- Terminal visual tweaks
--- enter insert mode when switching to terminal
--- close terminal buffer on process exit

-- cmd [[
--     autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
--     autocmd TermOpen * startinsert
--     autocmd BufLeave term://* stopinsert
-- ]]
cmd [[
    autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
    autocmd BufLeave term://* stopinsert
]]

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-- disable nvim intro
opt.shortmess:append "sI"

-- quickfix help
local is_open_qf_l = false
local is_open_qf_g = false

cmd [[
augroup fixlist
    autocmd!
    autocmd BufWinEnter quickfix lua set_qf_is_open()
    autocmd BufWinLeave * lua set_qf_is_close()
augroup END
]]

-- TODO: make this local
_G.set_qf_is_open = function()
  local info = vim.fn.getwininfo(vim.fn.win_getid())
  if info.loclist == 1 then
    is_open_qf_l = true
  else
    is_open_qf_g = true
  end
end

_G.set_qf_is_close = function()
  local info = vim.fn.getwininfo(vim.fn.win_getid())
  if info.loclist == 1 then
    is_open_qf_l = false
  else
    is_open_qf_g = false
  end
end

_G.ToggleQF = function(global)
  if global then
    if is_open_qf_g then
      cmd [[cclose]]
    else
      cmd [[copen]]
    end
  else
    if is_open_qf_l then
      cmd [[lclose]]
    else
      cmd [[lclose]]
    end
  end
end

