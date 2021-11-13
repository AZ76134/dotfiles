local ok, blankline = pcall(require, "indent_blankline")
if (not ok) then return end
blankline.setup {
  -- char = "|",
 space_char_blankline = " ",
 show_current_context = true,
 show_current_context_start = true,
 show_first_indent_level = false,
  filetype_exclude = {
    'help',
    'git',
    'markdown',
    'text',
    'terminal',
    'packer',
    'dashboard'
  },
  buftype_exclude = {
    'terminal',
    'nofile'
  },
}
