local ok, bufferline = pcall(require, "bufferline")
if (not ok) then return end

local function get_severity_label(severity, type)
  local label = severity
  local prefix = "LspDiagnostics" .. (type or "Default")

  if vim.diagnostic then
    prefix = type and ("Diagnostic" .. type) or "Diagnostic"
    label = ({
      Warning = "Warn",
      Information = "Info",
    })[severity] or severity
  end

  return prefix .. label
end

local severity = {
  [0] = "Other",
  [1] = "Error",
  [2] = "Warning",
  [3] = "Information",
  [4] = "Hint",
}

local function get_signs()
  local signs = {}
  for _, v in pairs(severity) do
    if v ~= "Other" then
      -- pcall to catch entirely unbound or cleared out sign hl group
      local status, sign = pcall(function()
        return vim.trim(vim.fn.sign_getdefined(get_severity_label(v, "Sign"))[1].text)
      end)
      if not status then
        sign = v:sub(1, 1)
      end
      signs[string.lower(v)] = sign
    end
  end
  return signs
end


local signs=get_signs()

bufferline.setup {
 options = {
    numbers = 'ordinal',
    always_show_bufferline = true,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = ' '
      for e, n in pairs(diagnostics_dict) do
        -- local sym = diagnostics_signs[e] or diagnostics_signs.default
        local sym = signs[e]
        s = s .. (#s > 1 and ' ' or '') .. sym .. ' ' .. n
      end
      -- return "("..count..")"
      return s
    end,
    separator_style = 'slant',
    offsets = {
      {
        filetype = "CHADTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    }
  },
}
