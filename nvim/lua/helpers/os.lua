local uv = vim.loop

local is_windows = uv.os_uname().version:match 'Windows'
local path_sep = is_windows and '\\' or '/'

return {
  is_windows = is_windows
}
