-- Vim Options

--vim.opt.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")
--vim.cmd("hi! @variable guifg=#ff1c1c")

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

--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")
--vim.cmd("hi! @variable.cpp guifg=#ff1c1c")
--vim.cmd("hi! @Comment.cpp guifg=#999999")

-- Keymaps

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

-- Netrw keymap changes
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end

    -- NvimTmuxNavigateRight in Netrw
    bind('<C-l>', '<cmd>NvimTmuxNavigateRight<CR>')

  end
})

-- Vim Fugitive
vim.keymap.set({"n", "v"}, "<leader>gs", "<cmd>Git<CR>", { desc = "Show Git Fugitive"})
vim.keymap.set({"n", "v"}, "<leader>gp", "<cmd>Git push<CR>", { desc = "Git Push"})
