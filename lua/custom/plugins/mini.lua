-- vim: foldmarker=(((,))):foldmethod=marker:foldlevel=0:shiftwidth=2:softtabstop=2:tabstop=2

local status_ok, mini_surround = pcall(require, "mini.surround")
if not status_ok then
  return
end

mini_surround.setup {}
