local uv = vim.loop
local os = require'helpers.os'

local path_sep = os.is_windows and '\\' or '/'


local function exists(filename)
  local stat = uv.fs_stat(filename)
  return stat and stat.type or false
end

local function is_dir(filename)
  return exists(filename) == 'directory'
end

local function is_file(filename)
  return exists(filename) == 'file'
end

local function path_join(...)
  local result = table.concat(vim.tbl_flatten { ... }, path_sep):gsub(path_sep .. '+', path_sep)
  return result
end

return {
  sep = path_sep,
  is_dir = is_dir,
  is_file = is_file,
  exists = exists,
  join = path_join,
}