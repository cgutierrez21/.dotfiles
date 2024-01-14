
function FocusedColor(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

    --vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")
    --vim.cmd("hi! @variable.cpp guifg=#ff1c1c")
    --vim.cmd("hi! @Comment.cpp guifg=#999999")
    --vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

FocusedColor()
