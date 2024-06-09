return {
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
}
