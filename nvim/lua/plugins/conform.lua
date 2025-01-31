return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", stop_after_first = true },
				typescript = { "prettierd", stop_after_first = true },
				html = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
			},
			format_after_save = {
				timeout_ms = 50,
				lsp_format = "fallback",
			},

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
		})
	end,
}
