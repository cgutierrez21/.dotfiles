Vim�UnDo� 9�627V~�i��	{���wZ�g���*�^I<   (                 6       6   6   6    e��^    _�                     ,        ����                                                                                                                                                                                                                                                                                                                                                             e�pn     �   -              v�   .            �   ,               �   ,            5��    ,                      p                     �    ,                      p                     �    -                      q                     �    -                 /   r              �       5�_�                    /        ����                                                                                                                                                                                                                                                                                                                            /           /          v       e�pw     �   .   0   0      0    --vim.cmd("hi! @variable.cpp guifg=#ff1c1c")5��    .                      �                     5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            0           0          v       e�p{    �   /              /    --vim.cmd("hi! @Comment.cpp guifg=#999999")5��    /                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�Ջ    �                 #vim.cmd([[colorscheme catppuccin]])5��                                   $               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���    �   	      /          vim.opt.tabstop = 4   vim.opt.softtabstop = 4   vim.opt.shiftwidth = 4   vim.opt.expandtab = true           vim.opt.wrap = false           vim.opt.swapfile = false   vim.opt.backup = false   6vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"   vim.opt.undofile = true           vim.opt.hlsearch = false   vim.opt.incsearch = true           vim.opt.termguicolors = true           vim.opt.scrolloff = 14   vim.opt.signcolumn = "yes"   vim.opt.isfname:append("@-@")    �   /               �               /   vim.opt.background = "dark"   /vim.api.nvim_set_hl(0, "Normal", {bg = "none"})   4vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})   >--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")   (--vim.cmd("hi! @variable guifg=#ff1c1c")       vim.opt.nu = true   vim.opt.relativenumber = true           vim.opt.tabstop = 4   vim.opt.softtabstop = 4   vim.opt.shiftwidth = 4   vim.opt.expandtab = true           vim.opt.wrap = false           vim.opt.swapfile = false   vim.opt.backup = false   6vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"   vim.opt.undofile = true           vim.opt.hlsearch = false   vim.opt.incsearch = true           vim.opt.termguicolors = true           vim.opt.scrolloff = 14   vim.opt.signcolumn = "yes"   vim.opt.isfname:append("@-@")           vim.opt.updatetime = 50       vim.opt.foldmethod = "expr"   /vim.opt.foldexpr = "nvim_treesitter#foldexpr()"   vim.opt.foldcolumn = "1"   vim.opt.foldlevel = 20       <vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")   *vim.cmd("hi! @variable.cpp guifg=#ff1c1c")   )vim.cmd("hi! @Comment.cpp guifg=#999999")5��            .   )   /               �      �      �    /                      �                     �    	                          �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��$     �          )       �          (    5��                                                  �                                                  5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             e��0    �   )               �   )            5��    )                      �                     �    )                      �                     5�_�      	              *        ����                                                                                                                                                                                                                                                                                                                                                             e���     �   *            5��    *                      �                     5�_�      
           	   +        ����                                                                                                                                                                                                                                                                                                                                                             e���     �   *   +           5��    *                      �                     5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             e���     �         +          �         *    5��                          	                      �                          	                      5�_�   
                 +        ����                                                                                                                                                                                                                                                                                                                                                             e���     �   *   ,   ,       �   *   ,   +    5��    *                      �                     �    *                      �                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             e���    �   ,               �               ,   return {   	function()   		vim.opt.background = "dark"   3		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })   8		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })   @		--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")   *		--vim.cmd("hi! @variable guifg=#ff1c1c")       		vim.opt.nu = true   		vim.opt.relativenumber = true       		vim.opt.tabstop = 4   		vim.opt.softtabstop = 4   		vim.opt.shiftwidth = 4   		vim.opt.expandtab = true       		vim.opt.wrap = false       		vim.opt.swapfile = false   		vim.opt.backup = false   8		vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"   		vim.opt.undofile = true       		vim.opt.hlsearch = false   		vim.opt.incsearch = true       		vim.opt.termguicolors = true       		vim.opt.scrolloff = 14   		vim.opt.signcolumn = "yes"   		vim.opt.isfname:append("@-@")       		vim.opt.updatetime = 50       		vim.opt.foldmethod = "expr"   1		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"   		vim.opt.foldcolumn = "1"   		vim.opt.foldlevel = 20       >		vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")   ,		vim.cmd("hi! @variable.cpp guifg=#ff1c1c")   +		vim.cmd("hi! @Comment.cpp guifg=#999999")   	end,   }�      ,   ,   *       function()   vim.opt.background = "dark"   1vim.api.nvim_set_hl(0, "Normal", { bg = "none" })   6vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })   >--vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")   (--vim.cmd("hi! @variable guifg=#ff1c1c")       vim.opt.nu = true   vim.opt.relativenumber = true       vim.opt.tabstop = 4   vim.opt.softtabstop = 4   vim.opt.shiftwidth = 4   vim.opt.expandtab = true       vim.opt.wrap = false       vim.opt.swapfile = false   vim.opt.backup = false   6vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"   vim.opt.undofile = true       vim.opt.hlsearch = false   vim.opt.incsearch = true       vim.opt.termguicolors = true       vim.opt.scrolloff = 14   vim.opt.signcolumn = "yes"   vim.opt.isfname:append("@-@")       vim.opt.updatetime = 50       vim.opt.foldmethod = "expr"   /vim.opt.foldexpr = "nvim_treesitter#foldexpr()"   vim.opt.foldcolumn = "1"   vim.opt.foldlevel = 20       <vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")   *vim.cmd("hi! @variable.cpp guifg=#ff1c1c")   )vim.cmd("hi! @Comment.cpp guifg=#999999")   end5��           )      )      	       �      )      �            +      ,               4      �      �    ,                      �                     5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                                                             e��%     �   +   ,          }5��    +                      �                     5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             e��&     �   *   +              end,5��    *                      �      	               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��'     �                 return {5��                                   	               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��(     �                     function()5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��,     �                 #        vim.opt.background = "dark"   9        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })   >        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })   F        --vim.cmd("hi! Comment gui=italic cterm=italic guifg=#d1d1d1")   0        --vim.cmd("hi! @variable guifg=#ff1c1c")    5��                                                  �                                                �                          N                      �                          �                      �                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��1     �      
                  vim.opt.nu = true   %        vim.opt.relativenumber = true    5��                          �                      �                                                5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             e��4     �   	                     vim.opt.tabstop = 4           vim.opt.softtabstop = 4           vim.opt.shiftwidth = 4            vim.opt.expandtab = true    5��    	                                           �    
                      3                     �                          K                     �                          b                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��6     �                        vim.opt.wrap = false    5��                          |                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��9     �                         vim.opt.swapfile = false           vim.opt.backup = false   >        vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"           vim.opt.undofile = true    5��                          �                     �                          �                     �                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��<     �                         vim.opt.hlsearch = false            vim.opt.incsearch = true    5��                                               �                          +                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��?     �                $        vim.opt.termguicolors = true    5��                          E                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��A     �                        vim.opt.scrolloff = 14   "        vim.opt.signcolumn = "yes"   %        vim.opt.isfname:append("@-@")    5��                          c                     �                          z                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��E     �      !                  vim.opt.updatetime = 50    5��                          �                     5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             e��G     �       &          #        vim.opt.foldmethod = "expr"   7        vim.opt.foldexpr = "nvim_treesitter#foldexpr()"            vim.opt.foldcolumn = "1"           vim.opt.foldlevel = 20    5��                           �                     �    !                      �                     �    "                                           �    #                      2                     5�_�                    %        ����                                                                                                                                                                                                                                                                                                                                                             e��J    �   $   )              D        vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")   2        vim.cmd("hi! @variable.cpp guifg=#ff1c1c")   1        vim.cmd("hi! @Comment.cpp guifg=#999999")5��    %                      J                     �    &                      �                     �    '                      �                     5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             e�[R     �   '              )vim.cmd("hi! @Comment.cpp guifg=#999999")5��    '                      �                     5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             e�[T     �   &   (   (      *vim.cmd("hi! @variable.cpp guifg=#ff1c1c")5��    &                      �                     5�_�                    &        ����                                                                                                                                                                                                                                                                                                                                                             e�[V    �   %   '   (      <vim.cmd("hi! Comment gui=italic cterm=italic guifg=#999999")5��    %                      J                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             e�_�    �          (      vim.opt.background = "dark"5��                                                  5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             e�\     �         *       �         *    �         )      --�         (    5��                          �                      �                        �                      �                         �                      �                         �                     5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             e�\     �         *      --5��                         �                      5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             e�\   	 �         *      -5��                          �                      5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                             e�\     �                 5��                          �                      5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             e�\   
 �                vim.opt.termguicolors = true5��                          �                      5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             e���     �      
   )       �      
   (    5��                                                �                                                �       
                  *                     �       	                  )                     �                     	   (             	       �                         0                     �                         /                     �                         .                     �                         -                     �                         ,                     �                         +                     �       
                  *                     �       	                  )                     �                     
   (             
       �                         1                     �                         0                     �                         /                     �                         .                     �                         -                     �                         ,                     �                         +                     �       
                  *                     �       	                  )                     �                        (                    �                         4                     �                         3                     �                         2                     �                         1                     �                         0                     �                         /                     �                         .                     �                         -                     �                         ,                     �                         +                     �       
                  *                     �       	                  )                     �                        (                    �                         4                     �                         3                     �                         2                     �                         1                     �                         0                     �                         /                     �                         .                     �                         -                     �                         ,                     �                         +                     �       
                  *                     �       	                  )                     �                        (                    �                        (                    �                        (                    �                         <                     5�_�   %   '           &   	       ����                                                                                                                                                                                                                                                                                                                                                             e��1     �   	      )    �   	   
   )    5��    	                      =                     5�_�   &   (           '   
        ����                                                                                                                                                                                                                                                                                                                                                             e��1     �   
      *    �   
      *    5��    
                      Z                     5�_�   '   )           (   	       ����                                                                                                                                                                                                                                                                                                                                                             e��5     �      
   +      vim.opt.formatoptions -= cro5��                         :                     5�_�   (   *           )   	       ����                                                                                                                                                                                                                                                                                                                                                             e��5     �      
   +      vim.opt.formatoptions -= co5��                         :                     5�_�   )   +           *   
       ����                                                                                                                                                                                                                                                                                                                                                             e��6     �   	      +      vim.opt.formatoptions -= cro5��    	                     T                     5�_�   *   ,           +   
       ����                                                                                                                                                                                                                                                                                                                                                             e��6     �   	      +      vim.opt.formatoptions -= ro5��    	                     U                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             e��7     �   
      +      vim.opt.formatoptions -= cro5��    
                     o                     5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             e��7     �   
      +      vim.opt.formatoptions -= ro5��    
                     o                     5�_�   -   /           .   	       ����                                                                                                                                                                                                                                                                                                                                                             e��=     �      
   +      vim.opt.formatoptions -= c5��                         9                     5�_�   .   0           /   	       ����                                                                                                                                                                                                                                                                                                                                                             e��@     �      
   +      vim.opt.formatoptions -= "c5��                         ;                     5�_�   /   1           0   
       ����                                                                                                                                                                                                                                                                                                                                                             e���     �   	   
          vim.opt.formatoptions -= r5��    	                      =                     5�_�   0   2           1   
       ����                                                                                                                                                                                                                                                                                                                                                             e���     �   	   
          vim.opt.formatoptions -= o5��    	                      =                     5�_�   1   3           2   	       ����                                                                                                                                                                                                                                                                                                                                                             e���     �      
   )      vim.opt.formatoptions -= "c"5��                         6                     5�_�   2   4           3   	       ����                                                                                                                                                                                                                                                                                                                                                             e���    �      
   )      vim.opt.formatoptions = "c"5��                        9                    5�_�   3   5           4   )       ����                                                                                                                                                                                                                                                                                                                                                             e���     �   )            5��    )                                            5�_�   4   6           5   *        ����                                                                                                                                                                                                                                                                                                                                                             e���    �   )   *           5��    )                                            5�_�   5               6   	        ����                                                                                                                                                                                                                                                                                                                                                             e��]    �      	          vim.opt.formatoptions = "t"5��                                                5��