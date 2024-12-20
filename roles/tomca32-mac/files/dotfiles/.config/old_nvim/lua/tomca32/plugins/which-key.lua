return {
  "folke/which-key.nvim",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 150
  end,
  opts = {
    defaults = {
      ["<leader>s"] = { name = "Splits"},
      ["<leader>t"] = { name = "Tabs"},
    }
  },
}
