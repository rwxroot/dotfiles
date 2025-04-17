return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
			},
			format_after_save = {
				timeout_ms = 50,
				lsp_format = "fallback",
			},
		})
	end,
}
