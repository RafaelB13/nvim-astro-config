return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Projects", "~/Documents" },
      session_lens = {
        load_on_setup = true, -- Initialize on startup (requires Telescope)
        picker_opts = nil, -- Table passed to Telescope / Snacks to configure the picker. See below for more information
        mappings = {
          -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
          delete_session = { "i", "<C-D>" },
          alternate_session = { "i", "<C-S>" },
          copy_session = { "i", "<C-Y>" },
        },
      },
    }
  end,
}
