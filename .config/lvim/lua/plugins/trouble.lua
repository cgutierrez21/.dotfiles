return {
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
}
