return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {},
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = false,  -- Set to true if you also want git-ignored files
        },
        live_grep = {
          additional_args = { "--hidden" },
        },
      },
    },
  },
}
