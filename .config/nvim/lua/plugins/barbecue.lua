return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
        require("barbecue").setup({
            theme = {
                -- this highlight is used to override other highlights
                -- you can take advantage of its `bg` and set a background throughout your winbar
                -- (e.g. basename will look like this: { fg = "#c0caf5", bold = true })
                normal = { fg = "#f15a22" },

                -- these highlights correspond to symbols table from config
                ellipsis = { fg = "#ffffff" },
                separator = { fg = "#fce300" },
                modified = { fg = "#f6f6f6" },

                -- these highlights represent the _text_ of three main parts of barbecue
                dirname = { fg = "#600000" },
                basename = { bold = true },
                context = {},
            }
        })
    end,
}
