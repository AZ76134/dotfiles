local g = vim.g

g['test#go#runner'] = 'gotest'
g['test#neovim#start_normal'] = 1
g['test#strategy'] = 'neovim'
g['test#preserve_screen'] = 1
g['test#go#gotest#options'] = {
  nearest = '-v',
}

