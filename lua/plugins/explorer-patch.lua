return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,   -- Show hidden/dot files
            ignored = true,  -- Show git-ignored files
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}
