-- Non plugin
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bt", "<cmd>TransparentEnable<CR>", { desc = "Transparent background" })
vim.keymap.set("n", "<leader>bf", "<cmd>TransparentDisable<CR>", { desc = "Solid background" })
vim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })
vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })
vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word under cursor" }
)

-- Lazypm
vim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
vim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })
vim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>a", function()
    harpoon:list():append()
end, { desc = "Add current file to Harpoon list" })
vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle Harpoon menu" })
vim.keymap.set("n", "<leader>h", function()
    harpoon:list():select(1)
end, { desc = "Got to first file in list" })
vim.keymap.set("n", "<leader>j", function()
    harpoon:list():select(2)
end, { desc = "Got to second file in list" })
vim.keymap.set("n", "<leader>k", function()
    harpoon:list():select(3)
end, { desc = "Got to third file in list" })
vim.keymap.set("n", "<leader>l", function()
    harpoon:list():select(4)
end, { desc = "Got to fourth file in list" })
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
    harpoon:list():prev()
end, { desc = "Go to previous file in list" })
vim.keymap.set("n", "<C-S-N>", function()
    harpoon:list():next()
end, { desc = "Go to next file in list" })

-- Trouble
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

-- Todo Trouble
vim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Project search" })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })
