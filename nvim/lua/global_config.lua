local fn = vim.fn
local helpers = require 'helpers'

local tmp_path = helpers.path.join(fn.stdpath('data'), '/tmp')
if helpers.path.is_dir(tmp_path) == false then
 cmd('!mkdir '..tmp_path)
end

local log_path = helpers.path.join(fn.stdpath('data'), '/tmp/nvim.log')
CFG = {
  verbose = false,
  log_path = log_path,
}
