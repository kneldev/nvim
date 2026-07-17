return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local clangd = opts.servers and opts.servers.clangd
      if not clangd or not clangd.cmd then
        return
      end

      clangd.cmd = vim.tbl_filter(function(arg)
        return arg ~= "--function-arg-placeholders"
      end, clangd.cmd)
    end,
  },
}
