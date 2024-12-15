return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustfmt" },
				javascript = { "prettierd", stop_after_first = true },
				typescript = { "prettierd", stop_after_first = true },
				yaml = { "yamlfmt" },
				html = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
				sql = { "sqlfmt" },
			},
			format_after_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
		})
	end,
}
