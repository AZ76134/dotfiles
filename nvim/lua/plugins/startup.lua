local ok, startup = pcall(require, "nvim-startup")
if (not ok) then return end

startup.setup()
