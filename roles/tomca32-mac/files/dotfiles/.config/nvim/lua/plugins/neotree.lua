return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem.filtered_items = {
        hide_gitignored = false,
        hide_dotfiles = false,
      }
      return opts
    end,
  },
}
