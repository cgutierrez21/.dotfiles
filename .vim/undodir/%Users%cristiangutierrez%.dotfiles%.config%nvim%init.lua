Vim�UnDo� �� *9=-?�X��iA����X 9�;��JU��c                     G       G   G   G    e��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e��     �                --require("config.gutibones")5��                          S                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��    �                "--vim.cmd('colorscheme gutibones')5��                          �      #               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��      �                  �               �               5��                          �                     �                          �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��1     �                 vim.cmd("colorscheme gruvbox")�               5��                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��7    �                 "vim.cmd("colorscheme catppuccino")5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���   	 �                   vim.fn.system({           "git",           "clone",           "--filter=blob:none",   1        "https://github.com/folke/lazy.nvim.git",   3        "--branch=stable", -- latest stable release           lazypath,       })�                  �                  <local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"   &if not vim.loop.fs_stat(lazypath) then     vim.fn.system({   
    "git",       "clone",       "--filter=blob:none",   -    "https://github.com/folke/lazy.nvim.git",   /    "--branch=stable", -- latest stable release       lazypath,     })   end   vim.opt.rtp:prepend(lazypath)       vim.g.mapleader = " "        require("lazy").setup("plugins")   require("config.lspconfig")   require("config.keymaps")   require("config.set")   !vim.cmd("colorscheme catppuccin")5��               !                  �      �      �                          �                     �                       d       �       �       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�B�     �                  �               5��                          �                     �                          �                     �                       �   �              �       �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     �       �                  �                     5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             e�B�     �                �jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj5��                          �      �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�B�   
 �                 5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e�\�     �                 !vim.cmd("colorscheme catppuccin")�               5��                         �                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                               $          -       v   -    e�\�    �                 0vim.cmd("colorscheme solarized-osakacatppuccin")5��       $       
           �      
               5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             e�^�    �                 &vim.cmd("colorscheme solarized-osaka")5��       $                  �                     5�_�                       %    ����                                                                                                                                                                                                                                                                                                                               %          )       v   )    e�^�     �                 ,vim.cmd("colorscheme solarized-osaka-night")5��       %                  �                     5�_�                        %    ����                                                                                                                                                                                                                                                                                                                               %          )       v   )    e�^�    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�      !                  %    ����                                                                                                                                                                                                                                                                                                                               %          )       v   )    e�_I     �                 ,vim.cmd("colorscheme solarized-osaka-storm")5��       %                  �                     5�_�       "           !      %    ����                                                                                                                                                                                                                                                                                                                               %          )       v   )    e�_J    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�   !   #           "      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_b     �                 *vim.cmd("colorscheme solarized-osaka-day")5��       %                  �                     5�_�   "   $           #      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_c     �                 )vim.cmd("colorscheme solarized-osaka-ay")5��       %                  �                     5�_�   #   %           $      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_c     �                 (vim.cmd("colorscheme solarized-osaka-y")5��       %                  �                     5�_�   $   &           %      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_d    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�   %   '           &      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_y     �                 +vim.cmd("colorscheme solarized-osaka-moon")5��       %                  �                     5�_�   &   (           '      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_z     �                 *vim.cmd("colorscheme solarized-osaka-oon")5��       %                  �                     5�_�   '   )           (      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_z     �                 )vim.cmd("colorscheme solarized-osaka-on")5��       %                  �                     5�_�   (   *           )      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_z     �                 (vim.cmd("colorscheme solarized-osaka-n")5��       %                  �                     5�_�   )   +           *      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_{    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�   *   ,           +      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 ,vim.cmd("colorscheme solarized-osaka-storm")5��       %                  �                     5�_�   +   -           ,      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 +vim.cmd("colorscheme solarized-osaka-torm")5��       %                  �                     5�_�   ,   .           -      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 *vim.cmd("colorscheme solarized-osaka-orm")5��       %                  �                     5�_�   -   /           .      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 )vim.cmd("colorscheme solarized-osaka-rm")5��       %                  �                     5�_�   .   0           /      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 (vim.cmd("colorscheme solarized-osaka-m")5��       %                  �                     5�_�   /   1           0      %    ����                                                                                                                                                                                                                                                                                                                                                             e�_�    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�   0   2           1      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 ,vim.cmd("colorscheme solarized-osaka-night")5��       $                  �                     5�_�   1   3           2      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 +vim.cmd("colorscheme solarized-osakanight")5��       $                  �                     5�_�   2   4           3      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 *vim.cmd("colorscheme solarized-osakaight")5��       $                  �                     5�_�   3   5           4      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 )vim.cmd("colorscheme solarized-osakaght")5��       $                  �                     5�_�   4   6           5      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 (vim.cmd("colorscheme solarized-osakaht")5��       $                  �                     5�_�   5   7           6      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�    �                 'vim.cmd("colorscheme solarized-osakat")5��       $                  �                     5�_�   6   8           7      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�    �                 &vim.cmd("colorscheme solarized-osaka")5��       $                  �                     5�_�   7   9           8      %    ����                                                                                                                                                                                                                                                                                                                               )          %       v   %    e�_�     �                 ,vim.cmd("colorscheme solarized-osaka-storm")5��       %                  �                     5�_�   8   :           9      %    ����                                                                                                                                                                                                                                                                                                                               )          %       v   %    e�_�    �                 'vim.cmd("colorscheme solarized-osaka-")5��       %                  �                     5�_�   9   ;           :      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 +vim.cmd("colorscheme solarized-osaka-moon")5��       $                  �                     5�_�   :   <           ;      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 *vim.cmd("colorscheme solarized-osakamoon")5��       $                  �                     5�_�   ;   =           <      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 )vim.cmd("colorscheme solarized-osakaoon")5��       $                  �                     5�_�   <   >           =      $    ����                                                                                                                                                                                                                                                                                                                                                             e�_�     �                 (vim.cmd("colorscheme solarized-osakaon")5��       $                  �                     5�_�   =   ?           >      $    ����                                                                                                                                                                                                                                                                                                                                                             e�`     �                 'vim.cmd("colorscheme solarized-osakan")5��       $                  �                     5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                             e���     �                 &vim.cmd("colorscheme solarized-osaka")5��              	          �      	              5�_�   ?   A           @          ����                                                                                                                                                                                                                                                                                                                                                             e���    �                 "vim.cmd("colorscheme night-osaka")5��                        �                    5�_�   @   B           A          ����                                                                                                                                                                                                                                                                                                                                                v       e��s     �                  vim.cmd("colorscheme night-owl")5��              	           �      	               5�_�   A   C           B          ����                                                                                                                                                                                                                                                                                                                                                v       e��t    �                 vim.cmd("colorscheme ")5��                         �                     5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                                         #       v   #    e��}     �                 &vim.cmd("colorscheme solarized-osaka")5��                         �                     5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                         #       v   #    e��~    �                 vim.cmd("colorscheme ")5��                      
   �              
       5�_�   D   F           E           ����                                                                                                                                                                                                                                                                                                                                                             e���    �                require("config.lspconfig")5��                          f                     5�_�   E   G           F           ����                                                                                                                                                                                                                                                                                                                                                             e��t     �                  �               �               5��                          �                     �                      9   �              �       5�_�   F               G      "    ����                                                                                                                                                                                                                                                                                                                                                             e��~    �                #Probably not the best, I had to use5��                          �      $               5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             e���     �               --require("config.lspconfig")5��                          f                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �               --require("config.keymaps")5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �               --require("config.set")5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e���     �               *require("lazy").setup("plugins", "config")5��                      
   d              
       5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             e��C     �               require("configlspconfig")5��                         u                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             e��C     �               require("configspconfig")5��                         u                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             e��C     �               require("configpconfig")5��                         u                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             e��D     �               require("configconfig")5��                         u                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             e��D     �               require("configonfig")5��                         u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��D     �               require("confignfig")5��                         u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��D     �               require("configfig")5��                         u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��E     �               require("configig")5��                         u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��E     �               require("configg")5��                         u                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��E     �               require("config")5��                         u                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��J     �               --require("config.keymaps")5��                          x                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��M    �               --require("config.set")5��                          �                     5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                                             e���    �               require("lazy.config")5��       	                  o                     5��