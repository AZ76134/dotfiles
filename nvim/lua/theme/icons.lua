vim.fn.sign_define("DiagnosticSignError", {text = "🔥", texthl = "GruvboxRed"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "⚠️", texthl = "GruvboxYellow"})
vim.fn.sign_define("DiagnosticSignInfo", {text = "💬", texthl = "GruvboxBlue"})
vim.fn.sign_define("DiagnosticSignHint", {text = "💡", texthl = "GruvboxAqua"})

vim.fn.sign_define("LspDiagnosticsSignError", {text = "🔥",numhl = "GruvboxRed"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "⚠️", numhl = "GruvboxYellow"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "💬", numhl = "GruvboxBlue"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "💡", numhl = "GruvboxAqua"})

-- vim.fn.sign_define("LspDiagnosticsSignError", {text = "𥉉",numhl = "GruvboxRed"})
-- vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "GruvboxYellow"})
-- vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "GruvboxBlue"})
-- vim.fn.sign_define("LspDiagnosticsSignHint", {text = "ﯧ", numhl = "GruvboxAqua"})
