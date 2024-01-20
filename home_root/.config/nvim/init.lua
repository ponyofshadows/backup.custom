require("basic")

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins managed by lazy, see https://github.com/folke/lazy.nvim
---- local
require("lazy").setup(
{
  "basic",  -- why this don't work?????????????????????????????????????????
  "lsp",   
  "neovim/nvim-lspconfig",
  "kevinhwang91/rnvimr" -- communicate with ranger
}


)

