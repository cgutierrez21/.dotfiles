return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = "night-owl",
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename", "filetype" },
					lualine_x = {},
					lualine_y = { "encoding", "fileformat" },
					lualine_z = { "progress" },
				},
			},
		},
	},

	{
		"folke/todo-comments.nvim",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			keywords = {
				DONE = { icon = " ", color = "done", alt = { "DONE" } },
			},
			colors = {
				done = { "#00FF00" },
			},
		},
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			vim.keymap.set("n", "<leader>to", function()
				require("trouble").open()
			end, { desc = "Open trouble" })
			vim.keymap.set("n", "<leader>tw", function()
				require("trouble").open("workspace_diagnostics")
			end, { desc = "Open workspace diagnostics" })
			vim.keymap.set("n", "<leader>td", function()
				require("trouble").open("document_diagnostics")
			end, { desc = "Open document diagnostics" })
			vim.keymap.set("n", "<leader>tr", "<cmd>TroubleRefresh<CR>", { desc = "Refresh trouble" })
			vim.keymap.set("n", "<leader>tlr", function()
				require("trouble").open("lsp_references")
			end, { desc = "Open lsp references" })
			vim.keymap.set("n", "<leader>tld", function()
				require("trouble").open("lsp_definitions")
			end, { desc = "Open lsp definitions" })
			vim.keymap.set("n", "<leader>tlt", function()
				require("trouble").open("lsp_type_definitions")
			end, { desc = "Open lsp type definitions" })
			vim.keymap.set(
				"n",
				"<leader>ttd",
				":TodoTrouble keywords=TODO,FIX,WARN<CR>",
				{ desc = "Find TODOs, FIXes, WARNs" }
			)
		end,
	},

	{
		"numToStr/Comment.nvim",
		opts = {
			opleader = {
				line = "<leader>/",
				block = "<leader>*",
			},
		},
		lazy = false,
	},
}
