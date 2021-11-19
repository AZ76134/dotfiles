local ok, close_buffers = pcall(require, 'close_buffers')
if (not ok) then return end

close_buffers.setup{}
