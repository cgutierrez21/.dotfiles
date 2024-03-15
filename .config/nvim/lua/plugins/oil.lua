return {
	{
		"stevearc/oil.nvim",
		opts = {
			columns = {
				-- "permissions",
				"size",
				"icon",
				-- "mtime",
			},
			win_options = {
				signcolumn = "yes",
			},
			-- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
			delete_to_trash = true,
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
