return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    alpha.setup(require("alpha.themes.dashboard").config)
  end
}
