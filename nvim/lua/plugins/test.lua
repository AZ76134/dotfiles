local g = vim.g
local cmd = vim.api.nvim_command

g['test#go#runner'] = 'gotest'
g['test#neovim#start_normal'] = 1
g['test#strategy'] = 'neovim'
g['test#preserve_screen'] = 1
g['test#neovim#term_position'] = 'vert'
g['test#go#gotest#options'] = {
  nearest = '-v',
}

-- _G.EchoStrategy = function(cmd)
--   echo 'It works! Command for running tests: '..cmd
-- end
--
-- g['test#custom_strategies'] = {
--   -- debug = function('EchoStrategy')
--   debug = EchoStrategy
-- }
--
_G.DebugNearest = function()
  g['test#go#runner'] = 'delve'
  cmd [[TestNearest]]
  g['test#go#runner'] = nil
end
