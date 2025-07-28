return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "tabs", -- set to "tabs" to only show tabpages instead
        numbers = "ordinal", -- can be "none", "ordinal", "buffer_id" or "both"
        indicator = {
          style = "underline",
        },
        diagnostics = true, -- set to "nvim_lsp" to show diagnostics from nvim_lsp
      },
    },
  },
  -- {
  --   "LunarVim/breadcrumbs.nvim",
  --   dependencies = {
  --     { "SmiteshP/nvim-navic" },
  --   },
  -- },
}
