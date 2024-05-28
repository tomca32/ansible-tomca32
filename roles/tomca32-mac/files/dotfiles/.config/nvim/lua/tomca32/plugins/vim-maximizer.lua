return {
  "szw/vim-maximizer",
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a split" })
  end
}
