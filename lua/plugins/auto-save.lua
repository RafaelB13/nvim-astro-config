return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {
      enable = true, -- Enable auto-save
      execution_message = {
        message = function() return "AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S" end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
    }
  end,
}
