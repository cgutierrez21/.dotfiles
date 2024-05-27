return {
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
	},

	{
		"oxfist/night-owl.nvim",
		lazy = false,
		--event = "ColorScheme",
		priority = 1000,
	},

	{
		"catppuccin/nvim",
		lazy = false,
		event = "ColorScheme",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				background = {
					light = "latte",
					dark = "macchiato",
				},
				transparent_background = false,
				show_end_of_buffer = false,
				term_colors = true,
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, --percentage of shade to apply to the inactive window
				},
				no_italic = false,
				no_bold = false,
				no_underline = false,
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = {},
					loops = {},
					functions = { "italic" },
					keywords = { "bold" },
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = { "italic" },
					operators = {},
				},
				color_overrides = {
					latte = {
						text = "#111111",
						rosewater = "#a80054",
						flamingo = "#8a0045",
						pink = "#790079",
						mauve = "#71345f",
						red = "#8d0000",
						maroon = "#500000",
						peach = "#bf471b",
						yellow = "#b1b100",
						green = "#00a500",
						teal = "#009696",
						blue = "#0000ad",
						sky = "#0057bf",
						lavender = "#592299",
						comments = "#2e2e2e",
					},
				},
				custom_highlights = {},
				highlight_overrides = {
					latte = function(latte)
						return {
							["@lsp.type.variable.rust"] = { fg = latte.red },
						}
					end,
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					barbecue = {
						dim_dirname = false, -- directory name is dimmed by default
						bold_basename = true,
						dim_context = false,
						alt_background = false,
					},
					harpoon = true,
					mason = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "underline" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
						inlay_hints = {
							background = true,
						},
					},
					noice = true,
					telescope = {
						enabled = true,
						-- style = "nvchad"
					},
					gitgutter = true,
					which_key = true,
				},
			})
			-- vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")
			-- vim.cmd("hi! @variable.cpp guifg=#ff1c1c")
			-- vim.cmd("hi! @Comment.cpp guifg=#999999")
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		opts = {},
	},
}
