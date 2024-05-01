local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
--local ok, lazy = pcall(require, "lazy")
--if not ok then
--  return
--end

vim.g.mapleader = " "

--require("lazy").setup({
--    spec = "plugins",
--    change_detection = { notify = false }
--})
--
--lazy.setup("plugins")

require("lazy").setup("plugins")

require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
