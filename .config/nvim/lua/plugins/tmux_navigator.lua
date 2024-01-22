return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		local nvim_tmux_nav = require("nvim-tmux-navigation")

		vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>")
		vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>")
		vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>")
		vim.keymap.set("n", "<C-l>", "<nop>")
		vim.keymap.set("n", "<C-L>", "<nop>")
		vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>")
		vim.keymap.set("n", "<C-\\>", "<cmd>NvimTmuxNavigateLastActive<CR>")
		vim.keymap.set("n", "<C-Space>", "<cmd>NvimTmuxNavigateNext<CR>")
	end,
}
