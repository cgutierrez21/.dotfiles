return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 10
    end,
    config = function()
        require("which-key").register({
            ["<leader>t"] = { name = "Trofzfuble and Telescope keymaps" },
            ["<leader>b"] = { name = "Background keymaps" },
            ["<leader>p"] = { name = "Search and Lazy keymaps" },
            ["<leader>v"] = { name = "LSP zero keymaps" },
            ["<leader>f"] = { name = "Code formatting" },
            ["<leader>m"] = { name = "Mason and check mappings" },
            ["<leader>mc"] = { name = "Check mappings" },
            ["<leader>g"] = { name = "Git mappings" },
        })
    end,
}
