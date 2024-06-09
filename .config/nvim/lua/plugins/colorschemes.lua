return {
	{
		"oxfist/night-owl.nvim",
		lazy = false,
		--event = "ColorScheme",
		priority = 1000,
	},

	{
		"iagorrr/noctishc.nvim",
		lazy = false,
		--event = "ColorScheme",
		priority = 1000,
	},

	{
		"nyoom-engineering/oxocarbon.nvim",
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
					macchiato = {
						base = "#131313",
						mantle = "#101010",
						crust = "#0d0d0d",
						text = "#ebebeb",
						rosewater = "#f3007a",
						flamingo = "#e10071",
						pink = "#b300b3",
						mauve = "#a05e8c",
						red = "#d30000",
						maroon = "#500000",
						peach = "#f15a22",
						yellow = "#dbdb00",
						green = "#00d900",
						teal = "#03d6d6",
						blue = "#3f3fff",
						sky = "#0363d6",
						lavender = "#6d29bd",
						comments = "#4a4a4a",
					},
					mocha = {
						base = "#0F000D", -- Deep dark background
						mantle = "#001F1F", -- Dark contrast for UI elements
						crust = "#45475a", -- Lighter contrast for status line and line numbers
						rosewater = "#FF937F", -- Soft pink for accents
						flamingo = "#CE4848", -- Soft red for errors
						pink = "#FF79C6", -- Bright neon pink for keywords
						mauve = "#CF60F8", -- Bright purple for functions
						red = "#F51D1D", -- Bright neon red for warnings
						maroon = "#610000", -- Dark red for git deletions
						peach = "#F15A22", -- Neon peach for constants
						yellow = "#FFFB0F", -- Bright neon yellow for variables
						green = "#2FFF25", -- Bright neon green for strings
						teal = "#2AF8FF", -- Bright teal for comments
						sky = "#43A0FF", -- Bright blue for types
						sapphire = "#0CA4E8", -- Bright blue for methods
						blue = "#1F42FF", -- Bright neon blue for documentation
						lavender = "#8421FC", -- Bright purple for inactive elements
					},
				},
				custom_highlights = {},
				highlight_overrides = {
					macchiato = function(macchiato)
						return {
							["@lsp.type.variable.rust"] = { fg = macchiato.red },
						}
					end,
					mocha = function(mocha)
						return {
							["@lsp.type.variable.rust"] = { fg = mocha.red },
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
}
