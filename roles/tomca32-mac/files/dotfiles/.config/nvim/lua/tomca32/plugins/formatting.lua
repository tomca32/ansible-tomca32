local format_runtime_opts = {
	lsp_fallback = true,
	async = false,
	timeout_ms = 1000,
}

return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				json = { "pretier" },
				rust = { "rustfmt" },
			},
			format_on_save = format_runtime_opts,
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format_runtime_opts)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
