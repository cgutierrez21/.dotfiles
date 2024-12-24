return {
	{
		"mbbill/undotree",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })
		end,
	},
}
