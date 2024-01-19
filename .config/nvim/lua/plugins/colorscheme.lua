return {
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
	},

	{
		"projekt0n/github-nvim-theme",
		lazy = true,
		priority = 1000,
	},

	{
		"oxfist/night-owl.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"iagorrr/noctishc.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"mcchrish/zenbones.nvim",
		dependencies = "rktjmp/lush.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"catppuccin/nvim",
		lazy = false,
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
					macchiato = {
						base = "#330533",
						mantle = "#260426",
						crust = "#1a031a",
						text = "#d1d1d1",
						rosewater = "#ff1c8e",
						flamingo = "#ff0080",
						pink = "#ff1cff",
						mauve = "#a92bff",
						red = "#ff1c1c",
						maroon = "#d30000",
						peach = "#ff9a1c",
						yellow = "#ffff1c",
						green = "#00ff00",
						teal = "#1cffff",
						blue = "#4040ff",
						sky = "#2d96ff",
						lavender = "#a92bff",
						comments = "#d1d1d1",
					},
				},
				custom_highlights = {},
				highlight_overrides = {
					macchiato = function(macchiato)
						return {
							["@comment"] = { fg = macchiato.text, style = { "italic" } },
							["@variable"] = { fg = macchiato.red },
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
			vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")
			vim.cmd("hi! @variable.cpp guifg=#ff1c1c")
			vim.cmd("hi! @Comment.cpp guifg=#999999")
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
}
