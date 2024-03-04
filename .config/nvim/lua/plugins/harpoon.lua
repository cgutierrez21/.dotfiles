return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
		end, { desc = "Add current file to Harpoon list" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon menu" })
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end, { desc = "Got to first file in list" })
		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end, { desc = "Got to second file in list" })
		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end, { desc = "Got to third file in list" })
		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end, { desc = "Got to fourth file in list" })
		vim.keymap.set("n", "<leader>5", function()
			harpoon:list():select(5)
		end, { desc = "Got to fifth file in list" })
		vim.keymap.set("n", "<leader>6", function()
			harpoon:list():select(6)
		end, { desc = "Got to sixth file in list" })
		vim.keymap.set("n", "<leader>7", function()
			harpoon:list():select(7)
		end, { desc = "Got to seventh file in list" })
		vim.keymap.set("n", "<leader>8", function()
			harpoon:list():select(8)
		end, { desc = "Got to eighth file in list" })
		vim.keymap.set("n", "<leader>9", function()
			harpoon:list():select(9)
		end, { desc = "Got to ninth file in list" })
		vim.keymap.set("n", "<leader>0", function()
			harpoon:list():select(10)
		end, { desc = "Got to tenth file in list" })
		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "Go to previous file in list" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "Go to next file in list" })
	end,
}
