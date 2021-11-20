vim.fn.sign_define("LspDiagnosticsSignError", {text = "🔥",numhl = "GruvboxRed"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "⚠️", numhl = "GruvboxYellow"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "💬", numhl = "GruvboxBlue"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "💡", numhl = "GruvboxAqua"})

-- vim.fn.sign_define("LspDiagnosticsSignError", {text = "𥉉",numhl = "GruvboxRed"})
-- vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "GruvboxYellow"})
-- vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "GruvboxBlue"})
-- vim.fn.sign_define("LspDiagnosticsSignHint", {text = "ﯧ", numhl = "GruvboxAqua"})

vim.fn.sign_define('DapBreakpoint', {text= '🟥',  linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text= '🟦', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text= '👟', texthl= '', linehl='', numhl=''})


if require'helpers'.os.is_windows then
	vim.fn.sign_define("LspDiagnosticsSignError", {text = "!",numhl = "GruvboxRed"})
	vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "?", numhl = "GruvboxYellow"})
	vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "I", numhl = "GruvboxBlue"})
	vim.fn.sign_define("LspDiagnosticsSignHint", {text = "/", numhl = "GruvboxAqua"})

	vim.fn.sign_define('DapBreakpoint', {text= 'B',  linehl='', numhl=''})
	vim.fn.sign_define('DapBreakpointRejected', {text= 'R', texthl='', linehl='', numhl=''})
	vim.fn.sign_define('DapStopped', {text= '>', texthl= '', linehl='', numhl=''})
end
