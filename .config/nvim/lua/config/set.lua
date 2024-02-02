--vim.opt.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")
--vim.cmd("hi! @variable guifg=#ff1c1c")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

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
