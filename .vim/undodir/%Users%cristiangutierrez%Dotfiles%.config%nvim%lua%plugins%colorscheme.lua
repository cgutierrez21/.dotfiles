Vim�UnDo� }+�C/y�e&FeR<�v�s����w�����\���   �           lazy = true,                             e�	�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e�	.     �         �          {5��                          S                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        e�	5     �                    &        "projekt0n/github-nvim-theme",           lazy = true,            --event = "ColorScheme",           priority = 1000,       },    5��                          S                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       "           V        e�	?     �                    {   !        "mcchrish/zenbones.nvim",   *        dependencies = "rktjmp/lush.nvim",           lazy = true,            --event = "ColorScheme",           priority = 1000,       },5��                          �      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        e�	A     �                 5��                          �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       e�	S     �   �   �   �   *       {   )        "craftzdog/solarized-osaka.nvim",           lazy = true,            --event = "ColorScheme",           priority = 1000,           config = function()   .            require("solarized-osaka").setup({                   style = "moon",   0                -- your configuration comes here   @                -- or leave it empty to use the default settings   [                transparent = false, -- Enable this to disable setting the background color   �                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)                   styles = {   E                    -- Style to be applied to different syntax groups   Q                    -- Value is any valid attr-list value for `:help nvim_set_hl`   1                    comments = { italic = true },   1                    keywords = { italic = true },   0                    functions = { bold = true },   #                    variables = {},   R                    -- Background styles. Can be "dark", "transparent" or "normal"   G                    sidebars = "dark", -- style for sidebars, see below   C                    floats = "dark",  -- style for floating windows                   },   �                sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`   �                day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors   �                hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.   >                dim_inactive = false, -- dims inactive windows   g                lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold       ]                --- You can override specific color groups to use other groups or a hex color   D                --- function will be called with a ColorScheme table   ,                ---@param colors ColorScheme   1                on_colors = function(colors) end,       [                --- You can override specific highlights to use other groups or a hex color   S                --- function will be called with a Highlights and ColorScheme table   /                ---@param highlights Highlights   ,                ---@param colors ColorScheme   A                on_highlights = function(highlights, colors) end,               })           end,       },5��    �      )                    �	              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       e�	U     �   �   �              ,5��    �                                           5�_�      	              �        ����                                                                                                                                                                                                                                                                                                                            �          �          v       e�	V    �   �   �           5��    �                                           5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                             e�	�     �         �              lazy = true,5��                                            5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             e�	�     �         �              lazy = true,5��                        �                    5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             e�	�    �         �              lazy = true,5��                                            5�_�              	              ����                                                                                                                                                                                                                                                                                                                                                             e�	�     �         �              lazy = false,�                        lazy = false,�                        lazy = false,�   *   ,          $                term_colors = false,�   a   c                               cmp = false,�   b   d          %                    gitsigns = false,�   c   e          %                    nvimtree = false,�   d   f          '                    treesitter = false,�   e   g          #                    notify = false,�   g   i          (                        enabled = false,�   l   n          .                        bold_basename = false,�   p   r          $                    harpoon = false,�   q   s          "                    mason = false,�   s   u          (                        enabled = false,�   �   �          /                            background = false,�   �   �          "                    noice = false,�   �   �          (                        enabled = false,�   �   �          &                    gitgutter = false,�   �   �          &                    which_key = false,5��                                            �                        �                    �                                            �    *                    �                    �    a                    �                    �    b                                        �    c                    7                    �    d   !                 _                    �    e                    �                    �    g   "                 �                    �    l   (                 �                    �    p                    M                    �    q                    p                    �    s   "                 �                    �    �   )                 J                    �    �                    �                    �    �   "                 �                    �    �                     T                    �    �                     {                    5��