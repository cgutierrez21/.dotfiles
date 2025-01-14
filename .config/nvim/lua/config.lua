-- Vim Options
vim.diagnostic.config({ virtual_text = false })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 14
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 20

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bt", "<cmd>TransparentEnable<CR>", { desc = "Transparent background" })
vim.keymap.set("n", "<leader>bf", "<cmd>TransparentDisable<CR>", { desc = "Solid background" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

vim.keymap.set({ "n", "v" }, "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set({ "n", "v" }, "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set({ "n", "v" }, "<C-l>", "<cmd>wincmd l<CR>")
vim.keymap.set({ "n", "v" }, "<C-h>", "<cmd>wincmd h<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })
vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })
vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })

-- check mappings
vim.keymap.set("n", "<leader>mcl", ":map <leader>", { desc = "Check leader mappings" })
vim.keymap.set("n", "<leader>mcc", ":map <C-", { desc = "Check control mappings" })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })
vim.keymap.set({ "n", "v" }, "<leader>x", [["_d]], { desc = "Delete to blackhole register" })

vim.keymap.set("i", "<C-c>", "<Esc>")
--vim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })  not using tmux right now

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

-- Oil nvim
vim.keymap.set("", "<leader>pv", "<cmd>Oil<CR>", { desc = "Exit to directory" })

-- Internal Terminal
vim.keymap.set({ "n", "v" }, "<leader>ko", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
end)
