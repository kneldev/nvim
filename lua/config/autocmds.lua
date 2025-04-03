-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Smart line number toggling when entering/exiting command mode
vim.api.nvim_create_autocmd("CmdlineEnter", {
  callback = function()
    vim.opt.relativenumber = false
    vim.opt.number = true
  end,
})

vim.api.nvim_create_autocmd("CmdlineLeave", {
  callback = function()
    vim.opt.relativenumber = true
  end,
})
