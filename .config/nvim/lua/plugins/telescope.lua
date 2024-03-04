return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- optional dependency
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
			},
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })
			vim.keymap.set("n", "<leader>tb", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end, { desc = "Project search" })
			vim.keymap.set("n", "<leader>tk", builtin.keymaps, { desc = "Search keymaps" })
			vim.keymap.set("n", "<leader>ti", builtin.diagnostics, { desc = "Search diagnostics" })
			vim.keymap.set("n", "<leader>tz", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "Fuzzy search in current file" })
		end,
	},

	{
		"andrew-george/telescope-themes",
		config = function()
			require("telescope").load_extension("themes")
			vim.keymap.set("n", "<leader>ts", "<cmd>Telescope themes<CR>", { desc = "Theme Switcher" })
		end,
	},
}
