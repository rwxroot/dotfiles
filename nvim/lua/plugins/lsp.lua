return {
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
		opts = {},
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
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

			lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			})
			lspconfig.ts_ls.setup({
				settings = {
					diagnostics = {
						ignoredCodes = { 7016, 2307 },
					},
					implicitProjectConfiguration = {
						checkJs = true,
					},
				},
			})

			lspconfig.lua_ls.setup({})
			lspconfig.taplo.setup({})
			lspconfig.typos_lsp.setup({})
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
						on_attach = function(client, bufnr) end,
						actions = true,
						completion = true,
						hover = true,
					},
				}
			)
		end,
	}
}
