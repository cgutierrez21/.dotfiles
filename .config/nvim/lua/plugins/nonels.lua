return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.formatting.ocamlformat,
			},
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "Format file" })
	end,
}
