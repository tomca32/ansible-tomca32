-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local nt = require "neotest"
      nt.setup {
        adapters = {
          require "rustaceanvim.neotest",
        },
      }
    end,
  },
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
      require("leap").opts.highlight_unlabeled_phase_one_targets = true

      vim.api.nvim_create_augroup("LeapHighlights", { clear = true })
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = "LeapHighlights",
        pattern = { "*" },
        callback = function()
          vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })

          vim.api.nvim_set_hl(0, "LeapMatch", {
            link = "Constant",
          })

          vim.api.nvim_set_hl(0, "LeapLabel", {
            link = "Keyword",
          })
        end,
      })
      vim.api.nvim_exec_autocmds("Colorscheme", { group = "LeapHighlights" })
    end,
  },
}
