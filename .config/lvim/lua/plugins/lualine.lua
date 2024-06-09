return {
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
}
