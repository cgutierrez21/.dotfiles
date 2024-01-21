return {

    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        enabled = true,
                        style = "solid",
                    },
                },
            })
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "cmake",
                },
                automatic_installation = true,
            })
        end,
    },

    {
        "folke/neodev.nvim",
        config = function()
            -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
            require("neodev").setup({
                -- add any options here, or leave empty to use the default settings
            })

            -- then setup your lsp server as usual
            local lspconfig = require("lspconfig")

            -- example to setup lua_ls and enable call snippets
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
                    },
                },
            })
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                    { name = "path" },
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-space>"] = cmp.mapping.complete(),
                    ["<Tab>"] = nil,
                    ["<S-Tab>"] = nil,
                }),
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
            })
            local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

            local default_setup = function(server)
                require("lspconfig")[server].setup({
                    capabilities = lsp_capabilities,
                })
            end
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = "nvim-treesitter/nvim-treesitter",
    },

    {
        "nvim-treesitter/nvim-treesitter-context"
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "cpp", "python", "lua", "vim", "vimdoc", "query" },

                sync_install = false,

                auto_install = true,

                ignore_install = { "javascript" },

                highlight = {
                    enable = true,
                    disable = { "rust" },
                    additional_vim_regex_highlighting = false,
                },

                textobjects = {
                    select = {
                        enable = true,

                        lookahead = true,

                        keymaps = {
                            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter region" },
                            ["ia"] = { query = "@parameter.inner", desc = "Select  inner part of a parameter region" },
                            ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
                            ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
                            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
                            ["ii"] = { query = "@conditional.inner", desc = "Select outer part of a conditional" },
                            ["ai"] = { query = "@conditional.outer", desc = "Select  inner part of a conditional" },
                            ["il"] = { query = "@loop.inner", desc = "Select outer part of a loop" },
                            ["al"] = { query = "@loop.outer", desc = "Select inner part of a loop" },
                            ["at"] = { query = "@comment.outer", desc = "Select outer part of a comment region" },
                        },
                        include_surrounding_whitespace = false,
                    },
                },
            })
        end,
    },
}
