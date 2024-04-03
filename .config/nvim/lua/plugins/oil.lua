return {
    {
        "stevearc/oil.nvim",
        opts = {
            columns = {
                -- "permissions",
                "size",
                "icon",
                -- "mtime",
            },
            win_options = {
                signcolumn = "yes",
            },
            -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
            delete_to_trash = true,
            view_options = {
                -- Show files and directories that start with "."
                show_hidden = true,
                -- This function defines what is considered a "hidden" file
                is_hidden_file = function(name, bufnr)
                    return vim.startswith(name, ".")
                end,
                -- This function defines what will never be shown, even when `show_hidden` is set
                is_always_hidden = function(name, bufnr)
                    return false
                end,
                -- Sort file names in a more intuitive order for humans. Is less performant,
                -- so you may want to set to false if you work with large directories.
                natural_order = true,
            },
        },
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
