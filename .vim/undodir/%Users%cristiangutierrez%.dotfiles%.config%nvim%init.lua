Vim�UnDo� _ʃ�?�&"A�A5��o����o�,i�� 6�1                                     e���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e��     �                --require("config.gutibones")5��                          S                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��    �                "--vim.cmd('colorscheme gutibones')5��                          �      #               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��      �                  �               �               5��                          �                     �                          �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��1     �                 vim.cmd("colorscheme gruvbox")�               5��                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��7    �                 "vim.cmd("colorscheme catppuccino")5��                         �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             e���    �                   vim.fn.system({           "git",           "clone",           "--filter=blob:none",   1        "https://github.com/folke/lazy.nvim.git",   3        "--branch=stable", -- latest stable release           lazypath,       })�                  �                  <local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"   &if not vim.loop.fs_stat(lazypath) then     vim.fn.system({   
    "git",       "clone",       "--filter=blob:none",   -    "https://github.com/folke/lazy.nvim.git",   /    "--branch=stable", -- latest stable release       lazypath,     })   end   vim.opt.rtp:prepend(lazypath)       vim.g.mapleader = " "        require("lazy").setup("plugins")   require("config.lspconfig")   require("config.keymaps")   require("config.set")   !vim.cmd("colorscheme catppuccin")5��               !                  �      �      �                          �                     �                       d       �       �       5��