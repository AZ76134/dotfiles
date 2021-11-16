
local log = function(...)
  if not CFG.verbose then
    return
  end
  local arg = {...}
  local log_default = string.format("%s%s%s.log", vim.api.nvim_call_function("stdpath", {"data"}), util.sep(), "gonvim")

  local log_path = CFG.log_path or log_default
  local str = " ? "

  local info = debug.getinfo(2, "Sl")
  str = str .. info.short_src .. ":" .. info.currentline
  for i, v in ipairs(arg) do
    if type(v) == "table" then
      str = str .. " |" .. tostring(i) .. ": " .. vim.inspect(v) .. "\n"
    else
      str = str .. " |" .. tostring(i) .. ": " .. tostring(v)
    end
  end
  if #str > 2 then
    if log_path ~= nil and #log_path > 3 then
      local f, err = io.open(log_path, "a+")
      if err then
        print("failed to open log")
        return
      end
      if not f then
        error('open file ' .. log_path, f)
      end
      io.output(f)
      io.write(str .. "\n")
      io.close(f)
    else
      print(str .. "\n")
    end
  end
end

return {
  log = log
}
