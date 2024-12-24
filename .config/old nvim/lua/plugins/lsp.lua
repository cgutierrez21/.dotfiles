return {

	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup({})

			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd",
					"pyright",
					"cmake",
				},
				automatic_installation = true,
			})
			vim.keymap.set("n", "<leader>mo", "<cmd>Mason<CR>", { desc = "Open Mason" })
		end,
	},

	{
		"folke/neodev.nvim",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		config = function()
			-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
			require("neodev").setup({
				-- add any options here, or leave empty to use the default settings
			})

			-- then setup your lsp server as usual
			local lspconfig = require("lspconfig")

			-- example to setup lua_ls and enable call snippets
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
					},
				},
			})
		end,
	},

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/nvim-cmp" },
			{ "L3MON4D3/LuaSnip" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			-- here you can setup the language servers
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = { "rust_analyzer", "clangd" },
				handlers = {
					lsp_zero.default_setup,
				},
			})

			vim.keymap.set("n", "<leader>vr", function()
				vim.lsp.buf.rename()
			end, { desc = "Rename" })
			vim.keymap.set("n", "<leader>va", function()
				vim.lsp.buf.code_action()
			end, { desc = "Code Action" })
		end,
	},
}
