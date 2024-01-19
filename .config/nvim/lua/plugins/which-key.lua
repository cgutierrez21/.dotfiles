return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 10
	end,
	config = function()
		require("which-key").register({
			["<leader>t"] = { name = "Trouble keymaps" },
			["<leader>b"] = { name = "Background keymaps" },
			["<leader>p"] = { name = "Search and Lazy keymaps" },
			["<leader>v"] = { name = "LSP zero keymaps" },
			["<leader>f"] = { name = "Code formatting" },
		})
	end,
}
