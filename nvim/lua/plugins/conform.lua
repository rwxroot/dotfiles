return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustfmt" },
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier", stop_after_first = true },
				c = { "clang_format" },
				cpp = { "clang_format" },
				yaml = { "yamlfmt" },
				html = { "prettier" },
				json = { "prettier" },
				markdown = { "prettier" },
				sql = { "sqlfmt" },
				asm = { "asmfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
