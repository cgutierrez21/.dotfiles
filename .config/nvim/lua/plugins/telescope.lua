return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- optional dependency
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                --build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
                build = "make",
            },
            "nvim-telescope/telescope-ui-select.nvim",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown(),
                    },
                    fzf = {},
                },
            })

            pcall(require("telescope").load_extension, "fzf")
            pcall(require("telescope").load_extension, "ui-select")

            local builtin = require("telescope.builtin")
            vim.keymap.set({ "n", "v" }, "<leader>ff", builtin.find_files, { desc = "Find files" })
            vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.git_files, { desc = "Find git files" })
            vim.keymap.set({ "n", "v" }, "<leader>fip", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end, { desc = "Search project" })
            vim.keymap.set({ "n", "v" }, "<leader>fk", builtin.keymaps, { desc = "Search keymaps" })
            vim.keymap.set({ "n", "v" }, "<leader>fd", builtin.diagnostics, { desc = "Search diagnostics" })
            vim.keymap.set(
                { "n", "v" },
                "<leader>fs",
                builtin.lsp_document_symbols,
                { desc = "Search document symbols" }
            )
            vim.keymap.set({ "n", "v" }, "<leader>fzf", function()
                builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                    winblend = 10,
                    previewer = false,
                }))
            end, { desc = "Fuzzy search in current file" })
        end,
    },

    {
        "andrew-george/telescope-themes",
        config = function()
            require("telescope").load_extension("themes")
            vim.keymap.set({ "n", "v" }, "<leader>ft", "<cmd>Telescope themes<CR>", { desc = "Theme Switcher" })
        end,
    },
}
