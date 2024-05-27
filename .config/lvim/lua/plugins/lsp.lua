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

	-- TODO: Make treesitter stuff into it's own file
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		dependencies = "nvim-treesitter/nvim-treesitter",
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		opts = {
			max_lines = 2,
			multiline_threshold = 2,
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },

				sync_install = false,

				auto_install = true,

				ignore_install = { "javascript" },

				highlight = {
					enable = true,
					disable = { "rust" },
					additional_vim_regex_highlighting = false,
				},

				textobjects = {
					select = {
						enable = true,

						lookahead = true,

						keymaps = {
							["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
							["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },
							["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
							["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
							["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
							["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
							["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },
							["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },
							["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },
							["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },
							["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },
						},
						include_surrounding_whitespace = false,
					},
				},
			})
		end,
	},
}
