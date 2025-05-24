return {
	{
		"j-hui/fidget.nvim",
		opts = {}
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "rust_analyzer", "typos_lsp", "taplo", "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			lspconfig.lua_ls.setup({})
			lspconfig.taplo.setup({})
			lspconfig.typos_lsp.setup({})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
				settings = {
					diagnostics = {
						ignoredCodes = { 7016, 2307 },
					},
					implicitProjectConfiguration = {
						checkJs = true,
					},
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "<space>gd", function()
				vim.cmd("vsplit")
				vim.cmd("wincmd l")
				vim.lsp.buf.definition()
			end)
			vim.keymap.set("n", "grr", vim.lsp.buf.references)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
		end,
	},
	{
		'saecki/crates.nvim',
		tag = 'stable',
		config = function()
			require('crates').setup(
				{
					lsp = {
						enabled = true,
						actions = true,
						completion = true,
						hover = true,
					},
				}
			)
		end,
	},
	{
		"stevearc/conform.nvim",
		enabled = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					html = { "prettierd" },
					json = { "prettierd" },
					markdown = { "prettierd" },
				},
			})

			vim.keymap.set({ "n", "v" }, "<leader>gf", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end)
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end
	}
}
