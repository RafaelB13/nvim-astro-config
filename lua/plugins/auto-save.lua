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
      trigger_events = { "InsertLeave", "TextChanged" }, -- events that trigger auto-save
      condition = function(buf)
        local fn = vim.fn
        local utils = require "auto-save.utils.data"
        return fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), { "oil" }) -- skip special buffers
      end,
    }
  end,
}
