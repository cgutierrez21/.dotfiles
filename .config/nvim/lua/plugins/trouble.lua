return {
    "folke/trouble.nvim",
    opts = {
        warn_no_results = false, -- show a warning when there are no results
        open_no_results = true,  -- open the trouble window when there are no results
    },                           -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",

    keys = {
        {
            "<leader>to",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>tb",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>ts",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>tl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>tL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>tq",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
}
