local ok, session = pcall(require, 'auto-session')
if (not ok) then return end

session.setup {
  log_level = 'info',
  auto_session_suppress_dirs = { '~/' }
}

local ok, sessionlens = pcall(require, 'session-lens')
if (not ok) then return end

sessionlens.setup {
  path_display = { 'shorten' },
}
