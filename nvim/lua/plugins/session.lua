local ok, session = pcall(require, 'auto-session')
if (not ok) then return end

session.setup {
  log_level = 'info',
  auto_session_suppress_dirs = { '~/' }
}

local ok, sessionlens = pcall(require, 'session-lens')
if (not ok) then return end

vim.o.sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal"
sessionlens.setup {
  path_display = { 'truncate' },
}
