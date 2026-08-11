local mdx_tools = vim.fs.joinpath(vim.fn.stdpath("data"), "mdx-tools")
local mdx_server = vim.fs.joinpath(mdx_tools, "node_modules", ".bin", "mdx-language-server")
local mdx_tsdk = vim.fs.joinpath(mdx_tools, "node_modules", "typescript", "lib")

vim.filetype.add({
  extension = {
    mdx = "markdown.mdx",
  },
})

vim.treesitter.language.register("markdown", { "mdx", "markdown.mdx" })

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.mdx_analyzer = {
        cmd = { mdx_server, "--stdio" },
        filetypes = { "mdx", "markdown.mdx" },
        root_markers = { "package.json", "tsconfig.json", ".git" },
        init_options = {
          typescript = {
            enabled = true,
            tsdk = mdx_tsdk,
          },
        },
      }
    end,
  },
}
