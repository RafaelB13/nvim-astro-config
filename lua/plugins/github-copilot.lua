return {
  {
    "zbirenbaum/copilot.lua",
    enabled = false,
    cmd = "Copilot",
    event = "VimEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<Right>",
          },
        },
      }
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
    dependencies = "copilot.lua",
    config = function() require("copilot_cmp").setup() end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    enabled = false,
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    config = function() require("CopilotChat").setup() end,
  },
}
