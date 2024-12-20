return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local horizon = require("lualine.themes.horizon")

    lualine.setup({
      options = {
        theme = horizon
      },
    })
  end
}
