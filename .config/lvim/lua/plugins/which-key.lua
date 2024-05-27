return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 100
    end,
    config = function()
        require("which-key").register({
            ["<leader>"] = {
                t = { name = "+Trouble and Telescope keymaps" },
                b = { name = "+Background keymaps" },
                p = {
                    name = "+To directory and Lazy keymaps",
                    m = "+Lazy keymaps",
                },
                v = { name = "+LSP keymaps" },
                f = { name = "+Code formatting" },
                m = {
                    name = "+Mason and check mappings",
                    c = "Check mappings",
                },
                g = { name = "+Git mappings" },
            },
        })
    end,
}
