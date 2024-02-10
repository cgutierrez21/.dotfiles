return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "night-owl",
                    sections = {
                        lualine_a = { "mode" },
                        lualine_b = { "branch", "diff", "diagnostics" },
                        lualine_c = { "filename", "filetype" },
                        lualine_x = {},
                        lualine_y = { "encoding", "fileformat" },
                        lualine_z = { "progress" },
                    },
                },
            })
        end,
    },

    {
        "folke/todo-comments.nvim",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup({
                keywords = {
                    DONE = { icon = " ", color = "done", alt = { "DONE" } },
                },
                colors = {
                    done = { "#00FF00" },
                },
            })
        end,
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        "echasnovski/mini.pairs",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        version = false,
    },
}
