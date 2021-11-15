local ok, startup = pcall(require, "nvim-startup")
if (not ok) then return end

local cmd = vim.api.nvim_command
local fn = vim.fn
local helpers = require 'helpers'

local log_path = helpers.path.join(fn.stdpath('data'), '/tmp/nvim-startuptime')
-- if helpers.path.is_dir(log_path) == false then
--  cmd('!mkdir '..log_path)
-- end

startup.setup {
  startup_file= log_path
}
