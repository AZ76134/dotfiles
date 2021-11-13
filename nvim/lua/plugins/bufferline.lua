local ok, bufferline = pcall(require, "bufferline")
if (not ok) then return end

bufferline.setup {
 options = {
   numbers = 'ordinal',
    always_show_bufferline = true,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = ' '
      for e, n in pairs(diagnostics_dict) do
        local sym = diagnostics_signs[e] or diagnostics_signs.default
        s = s .. (#s > 1 and ' ' or '') .. sym .. ' ' .. n
      end
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
