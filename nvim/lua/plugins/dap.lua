-- local ok, dap_go = pcall(require, 'dap-go')
-- if (not ok) then return end
--
-- dap_go.setup{}

local ok, dap = pcall(require, 'dap')
if (not ok) then return end

dap.adapters.go = function(callback, config)
  local stdout = vim.loop.new_pipe(false)
  local handle
  local pid_or_err
  local host = config.host or "127.0.0.1"
  local port = config.port or "38697"
  local addr = string.format("%s:%s", host, port)
  local opts = {
    stdio = {nil, stdout},
    args = {"dap", "-l", addr},
    detached = true
  }
  handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
    stdout:close()
    handle:close()
    if code ~= 0 then
      print('dlv exited with code', code)
    end
  end)
  assert(handle, 'Error running dlv: ' .. tostring(pid_or_err))
  stdout:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      vim.schedule(function()
        require('dap.repl').append(chunk)
      end)
    end
  end)
  -- Wait for delve to start
  vim.defer_fn(
    function()
      callback({type = "server", host = "127.0.0.1", port = port})
    end,
    100)
end

dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug test",
    request = "launch",
    mode = "test",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}",
  }
}

local function debug_test(testname)
  dap.run({
    type = "go",
    name = testname,
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}",
    args = {"-test.run", testname},
  })
end

local function debug_nearest_test()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  row, col = row, col + 1
  local ns = require('helpers.treesitter').go.get_func_method_node_at_pos(row, col)
  assert(ns, 'test not found')
  print('test name '..ns.name)
  debug_test(ns.name)
end

require'nvim-dap-virtual-text'.setup{}

return {
  debug_nearest_test = debug_nearest_test
}
