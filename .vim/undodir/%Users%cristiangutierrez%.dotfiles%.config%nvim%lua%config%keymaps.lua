Vim�UnDo� �&؈-P3;_�H��4tq[}����{�ZV   j       W                           e��    _�                     G        ����                                                                                                                                                                                                                                                                                                                            G           K           V        e���     �   F   G          -- Tmux Navigator   Uvim.keymap.set( {"n", "v"}, "<C-h>", ":<C-U>nvim_tmux_nav.NvimTmuxNavigateLeft<cr>" )   Uvim.keymap.set( {"n", "v"}, "<C-j>", ":<C-U>nvim_tmux_nav.NvimTmuxNavigateDown<cr>" )   Svim.keymap.set( {"n", "v"}, "<C-k>", ":<C-U>nvim_tmux_nav.NvimTmuxNavigateUp<cr>" )   Vvim.keymap.set( {"n", "v"}, "<C-l>", ":<C-U>nvim_tmux_nav.NvimTmuxNavigateRight<cr>" )5��    F                      �      i              5�_�                    E        ����                                                                                                                                                                                                                                                                                                                            G           G           V        e���    �   D   E           5��    D                      �                     5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             e��      �   	      Q       �   	      P    5��    	                      �                     �    	                      �                     5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             e��+    �   	   
          vim.key5��    	                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��K     �      
   Q       �      
   P    5��                          �                     �                          �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             e��U    �      	          vim.5��                          �                     5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             e���    �      	   Q      Fvim.keymap.set({"n", "v"}, "<leader>q", "<cmd>q<CR>", {desc = "Quit"})    �      
   Q       �      
   P    5��                          �                     �                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                          �                     �       F                  �                     5�_�      	              	        ����                                                                                                                                                                                                                                                                                                                                                             e��    �      
   P       5��                          �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                         �                     �                          �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             e���     �      
   Q       �      
   P    5��                          �                     �                          �                     �                         �                     �                         �                     �                     	   �             	       5�_�   	              
   	   
    ����                                                                                                                                                                                                                                                                                                                                                             e���    �      	          vim.keymap.5��                          �                     5�_�   
                    #    ����                                                                                                                                                                                                                                                                                                                               #          A       v   A    e���     �         P      gvim.keymap.set("n", "<leader>bt", '<cmd>lua TransparentColor()<CR>', {desc = "Transparent background"})5��       #                  H                      5�_�                       #    ����                                                                                                                                                                                                                                                                                                                               #          A       v   A    e���     �         P      Hvim.keymap.set("n", "<leader>bt", '', {desc = "Transparent background"})�         P    5��       #                  H                      �       =                  b                      5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               (          9       v   9    e���     �         P      ]vim.keymap.set("n", "<leader>bf", '<cmd>lua FocusedColor()<CR>', {desc = "Solid background"})5��       (                  �                      5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               (          9       v   9    e���    �         P      Kvim.keymap.set("n", "<leader>bf", '<cmd><CR>', {desc = "Solid background"})�         P    5��       (                  �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��    �              T   dvim.keymap.set("n", "<leader>bt", '<cmd>TransparentEnable<CR>', { desc = "Transparent background" })   _vim.keymap.set("n", "<leader>bf", '<cmd>TransparentDisable<CR>', { desc = "Solid background" })   Pvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Jvim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })           'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   >vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })   @vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })   ?vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   2vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Yvim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })   Hvim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })   ]vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })       %vim.keymap.set("i", "<C-c>", "<Esc>")   gvim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })           !vim.keymap.set("n", "Q", "<nop>")           Xvim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],   +    { desc = "Replace word under cursor" })       	-- Lazypm   Tvim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })   evim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })   dvim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })           
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   wvim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add current file to Harpoon list" })   {vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu" })   qvim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, { desc = "Got to first file in list" })   rvim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, { desc = "Got to second file in list" })   qvim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, { desc = "Got to third file in list" })   rvim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, { desc = "Got to fourth file in list" })   <-- Toggle previous & next buffers stored within Harpoon list   nvim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Go to previous file in list" })   jvim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Go to next file in list" })           
-- Trouble   fvim.keymap.set("n", "<leader>to", function() require("trouble").open() end, { desc = "Open trouble" })   bvim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end,   ,    { desc = "Open workspace diagnostics" })   avim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end,   +    { desc = "Open document diagnostics" })   Zvim.keymap.set("n", "<leader>tr", '<cmd>TroubleRefresh<CR>', { desc = "Refresh trouble" })   evim.keymap.set("n", "<leader>tlr", function() require("trouble").open("lsp_references") end, { desc =   "Open lsp references" })   ]vim.keymap.set("n", "<leader>tld", function() require("trouble").open("lsp_definitions") end,   &    { desc = "Open lsp definitions" })   bvim.keymap.set("n", "<leader>tlt", function() require("trouble").open("lsp_type_definitions") end,   +    { desc = "Open lsp type definitions" })           -- Todo Trouble   tvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })           -- Telescope   ,local builtin = require('telescope.builtin')   Nvim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files" })   Lvim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find git files" })   ,vim.keymap.set('n', '<leader>ps', function()   >    builtin.grep_string({ search = vim.fn.input("Grep > ") });   !end, { desc = "Project search" })       -- Undotree   ]vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })�   V               �               P   -- Non plugin    vim.g.mapleader = " "   bvim.keymap.set("n", "<leader>bt", '<cmd>TransparentEnable<CR>', {desc = "Transparent background"})   ]vim.keymap.set("n", "<leader>bf", '<cmd>TransparentDisable<CR>', {desc = "Solid background"})   Nvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", {desc = "Exit to directory"})   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Fvim.keymap.set({"n", "v"}, "<leader>q", "<cmd>q<CR>", {desc = "Quit"})           'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   :vim.keymap.set("n", "<leader>o", "zo", {desc="open fold"})   <vim.keymap.set("v", "<leader>z", "zf", {desc="create fold"})   ;vim.keymap.set("n", "<leader>c", "zc", {desc="close fold"})       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   0vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Svim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc="Yank to system clipboard"})   Fvim.keymap.set("n", "<leader>Y", [["+Y]], {desc = "Yank entire line"})   Wvim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc="Delete to blackhole register"})       %vim.keymap.set("i", "<C-c>", "<Esc>")   evim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", {desc = "Switch tmux session"})           !vim.keymap.set("n", "Q", "<nop>")           ~vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Replace word under cursor"})       	-- Lazypm   Pvim.keymap.set({"n", "v"}, "<leader>pml", "<cmd>Lazy<CR>", {desc = "Open Lazy"})   avim.keymap.set({"n", "v"}, "<leader>pmu", "<cmd>Lazy update<CR>", {desc = "Update Lazy plugins"})   `vim.keymap.set({"n", "v"}, "<leader>pmp", "<cmd>Lazy profile<CR>", {desc = "Open Lazy profile"})           
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   uvim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, {desc = "Add current file to Harpoon list"})   yvim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Toggle Harpoon menu"})   ovim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, {desc = "Got to first file in list"})   pvim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, {desc = "Got to second file in list"})   ovim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, {desc = "Got to third file in list"})   pvim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, {desc = "Got to fourth file in list"})   <-- Toggle previous & next buffers stored within Harpoon list   lvim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, {desc = "Go to previous file in list"})   hvim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, {desc = "Go to next file in list"})           
-- Trouble   bvim.keymap.set("n", "<leader>to", function() require("trouble").open() end, {desc="Open trouble"})   �vim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end, {desc="Open workspace diagnostics"})   �vim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end, {desc="Open document diagnostics"})   Vvim.keymap.set("n", "<leader>tr", '<cmd>TroubleRefresh<CR>', {desc="Refresh trouble"})   zvim.keymap.set("n", "<leader>tlr", function() require("trouble").open("lsp_references") end, {desc="Open lsp references"})   |vim.keymap.set("n", "<leader>tld", function() require("trouble").open("lsp_definitions") end, {desc="Open lsp definitions"})   �vim.keymap.set("n", "<leader>tlt", function() require("trouble").open("lsp_type_definitions") end, {desc="Open lsp type definitions"})           -- Todo Trouble   rvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", {desc = "Find TODOs, FIXes, WARNs"})           -- Telescope   ,local builtin = require('telescope.builtin')   Mvim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files"})   Jvim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Find git files"})   ,vim.keymap.set('n', '<leader>ps', function()   ;	builtin.grep_string({ search = vim.fn.input("Grep > ") });   end, {desc = "Project search"})       -- Undotree   [vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, {desc = "Toggle undotree window"})5��            O   [   V               �      +      �    V                      +                     �       "   S      g      F       �      �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             e��     �       Q       W   -- Non plugin   vim.g.mapleader = " "   dvim.keymap.set("n", "<leader>bt", '<cmd>TransparentEnable<CR>', { desc = "Transparent background" })   _vim.keymap.set("n", "<leader>bf", '<cmd>TransparentDisable<CR>', { desc = "Solid background" })   Pvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Jvim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })           'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   >vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })   @vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })   ?vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   2vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Yvim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })   Hvim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })   ]vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })       %vim.keymap.set("i", "<C-c>", "<Esc>")   gvim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })           !vim.keymap.set("n", "Q", "<nop>")           Xvim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],   +    { desc = "Replace word under cursor" })       	-- Lazypm   Tvim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })   evim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })   dvim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })           
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   wvim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add current file to Harpoon list" })   {vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu" })   qvim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, { desc = "Got to first file in list" })   rvim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, { desc = "Got to second file in list" })   qvim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, { desc = "Got to third file in list" })   rvim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, { desc = "Got to fourth file in list" })   <-- Toggle previous & next buffers stored within Harpoon list   nvim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Go to previous file in list" })   jvim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Go to next file in list" })           
-- Trouble   fvim.keymap.set("n", "<leader>to", function() require("trouble").open() end, { desc = "Open trouble" })   bvim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end,   ,    { desc = "Open workspace diagnostics" })   avim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end,   +    { desc = "Open document diagnostics" })   Zvim.keymap.set("n", "<leader>tr", '<cmd>TroubleRefresh<CR>', { desc = "Refresh trouble" })   evim.keymap.set("n", "<leader>tlr", function() require("trouble").open("lsp_references") end, { desc =   "Open lsp references" })   ]vim.keymap.set("n", "<leader>tld", function() require("trouble").open("lsp_definitions") end,   &    { desc = "Open lsp definitions" })   bvim.keymap.set("n", "<leader>tlt", function() require("trouble").open("lsp_type_definitions") end,   +    { desc = "Open lsp type definitions" })           -- Todo Trouble   tvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })           -- Telescope   ,local builtin = require('telescope.builtin')   Nvim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files" })   Lvim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find git files" })   ,vim.keymap.set('n', '<leader>ps', function()   >    builtin.grep_string({ search = vim.fn.input("Grep > ") });   !end, { desc = "Project search" })       -- Undotree   ]vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })    �   V   X        �      W       h   dvim.keymap.set("n", "<leader>bt", "<cmd>TransparentEnable<CR>", { desc = "Transparent background" })   _vim.keymap.set("n", "<leader>bf", "<cmd>TransparentDisable<CR>", { desc = "Solid background" })   Pvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Jvim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })       'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   >vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })   @vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })   ?vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   2vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Yvim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })   Hvim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })   ]vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })       %vim.keymap.set("i", "<C-c>", "<Esc>")   gvim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })       !vim.keymap.set("n", "Q", "<nop>")       vim.keymap.set(   	"n",   	"<leader>s",   8	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],   '	{ desc = "Replace word under cursor" }   )       	-- Lazypm   Tvim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })   evim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })   dvim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })       
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   +vim.keymap.set("n", "<leader>a", function()   	harpoon:list():append()   3end, { desc = "Add current file to Harpoon list" })   'vim.keymap.set("n", "<C-e>", function()   -	harpoon.ui:toggle_quick_menu(harpoon:list())   &end, { desc = "Toggle Harpoon menu" })   +vim.keymap.set("n", "<leader>h", function()   	harpoon:list():select(1)   ,end, { desc = "Got to first file in list" })   +vim.keymap.set("n", "<leader>j", function()   	harpoon:list():select(2)   -end, { desc = "Got to second file in list" })   +vim.keymap.set("n", "<leader>k", function()   	harpoon:list():select(3)   ,end, { desc = "Got to third file in list" })   +vim.keymap.set("n", "<leader>l", function()   	harpoon:list():select(4)   -end, { desc = "Got to fourth file in list" })   <-- Toggle previous & next buffers stored within Harpoon list   )vim.keymap.set("n", "<C-S-P>", function()   	harpoon:list():prev()   .end, { desc = "Go to previous file in list" })   )vim.keymap.set("n", "<C-S-N>", function()   	harpoon:list():next()   *end, { desc = "Go to next file in list" })       
-- Trouble   ,vim.keymap.set("n", "<leader>to", function()   	require("trouble").open()   end, { desc = "Open trouble" })   ,vim.keymap.set("n", "<leader>tw", function()   1	require("trouble").open("workspace_diagnostics")   -end, { desc = "Open workspace diagnostics" })   ,vim.keymap.set("n", "<leader>td", function()   0	require("trouble").open("document_diagnostics")   ,end, { desc = "Open document diagnostics" })   Zvim.keymap.set("n", "<leader>tr", "<cmd>TroubleRefresh<CR>", { desc = "Refresh trouble" })   -vim.keymap.set("n", "<leader>tlr", function()   *	require("trouble").open("lsp_references")   &end, { desc = "Open lsp references" })   -vim.keymap.set("n", "<leader>tld", function()   +	require("trouble").open("lsp_definitions")   'end, { desc = "Open lsp definitions" })   -vim.keymap.set("n", "<leader>tlt", function()   0	require("trouble").open("lsp_type_definitions")   ,end, { desc = "Open lsp type definitions" })       -- Todo Trouble   tvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })       -- Telescope   ,local builtin = require("telescope.builtin")   Nvim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })   Lvim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })   ,vim.keymap.set("n", "<leader>ps", function()   :	builtin.grep_string({ search = vim.fn.input("Grep > ") })   !end, { desc = "Project search" })       -- Undotree   ]vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })5��            O   [   V               �      +      �    V                      +                     �       "   S      g      F       �      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e��     �       Q       W   -- Non plugin   vim.g.mapleader = " "   dvim.keymap.set("n", "<leader>bt", '<cmd>TransparentEnable<CR>', { desc = "Transparent background" })   _vim.keymap.set("n", "<leader>bf", '<cmd>TransparentDisable<CR>', { desc = "Solid background" })   Pvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Jvim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })           'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   >vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })   @vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })   ?vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   2vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Yvim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })   Hvim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })   ]vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })       %vim.keymap.set("i", "<C-c>", "<Esc>")   gvim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })           !vim.keymap.set("n", "Q", "<nop>")           Xvim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],   +    { desc = "Replace word under cursor" })       	-- Lazypm   Tvim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })   evim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })   dvim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })           
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   wvim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add current file to Harpoon list" })   {vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu" })   qvim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end, { desc = "Got to first file in list" })   rvim.keymap.set("n", "<leader>j", function() harpoon:list():select(2) end, { desc = "Got to second file in list" })   qvim.keymap.set("n", "<leader>k", function() harpoon:list():select(3) end, { desc = "Got to third file in list" })   rvim.keymap.set("n", "<leader>l", function() harpoon:list():select(4) end, { desc = "Got to fourth file in list" })   <-- Toggle previous & next buffers stored within Harpoon list   nvim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Go to previous file in list" })   jvim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Go to next file in list" })           
-- Trouble   fvim.keymap.set("n", "<leader>to", function() require("trouble").open() end, { desc = "Open trouble" })   bvim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end,   ,    { desc = "Open workspace diagnostics" })   avim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end,   +    { desc = "Open document diagnostics" })   Zvim.keymap.set("n", "<leader>tr", '<cmd>TroubleRefresh<CR>', { desc = "Refresh trouble" })   evim.keymap.set("n", "<leader>tlr", function() require("trouble").open("lsp_references") end, { desc =   "Open lsp references" })   ]vim.keymap.set("n", "<leader>tld", function() require("trouble").open("lsp_definitions") end,   &    { desc = "Open lsp definitions" })   bvim.keymap.set("n", "<leader>tlt", function() require("trouble").open("lsp_type_definitions") end,   +    { desc = "Open lsp type definitions" })           -- Todo Trouble   tvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })           -- Telescope   ,local builtin = require('telescope.builtin')   Nvim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find files" })   Lvim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find git files" })   ,vim.keymap.set('n', '<leader>ps', function()   >    builtin.grep_string({ search = vim.fn.input("Grep > ") });   !end, { desc = "Project search" })       -- Undotree   ]vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })    �   V   X        �      W       h   dvim.keymap.set("n", "<leader>bt", "<cmd>TransparentEnable<CR>", { desc = "Transparent background" })   _vim.keymap.set("n", "<leader>bf", "<cmd>TransparentDisable<CR>", { desc = "Solid background" })   Pvim.keymap.set("", "<leader>pv", "<cmd>:Ex<CR>", { desc = "Exit to directory" })   ,vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")   ,vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")   Jvim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>q<CR>", { desc = "Quit" })       'vim.keymap.set("n", "<C-d>", "<C-d>zz")   'vim.keymap.set("n", "<C-u>", "<C-u>zz")   !vim.keymap.set("n", "n", "nzzzv")   !vim.keymap.set("n", "N", "Nzzzv")   >vim.keymap.set("n", "<leader>o", "zo", { desc = "open fold" })   @vim.keymap.set("v", "<leader>z", "zf", { desc = "create fold" })   ?vim.keymap.set("n", "<leader>c", "zc", { desc = "close fold" })       -- greatest remap ever   *vim.keymap.set("x", "<leader>p", [["_dP]])   2vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])       +-- next greatest remap ever : asbjornHaland   Yvim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })   Hvim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank entire line" })   ]vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to blackhole register" })       %vim.keymap.set("i", "<C-c>", "<Esc>")   gvim.keymap.set("n", "<C-f>", "<cmd> !tmux neww tmux-sessionizer<CR>", { desc = "Switch tmux session" })       !vim.keymap.set("n", "Q", "<nop>")       vim.keymap.set(   	"n",   	"<leader>s",   8	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],   '	{ desc = "Replace word under cursor" }   )       	-- Lazypm   Tvim.keymap.set({ "n", "v" }, "<leader>pml", "<cmd>Lazy<CR>", { desc = "Open Lazy" })   evim.keymap.set({ "n", "v" }, "<leader>pmu", "<cmd>Lazy update<CR>", { desc = "Update Lazy plugins" })   dvim.keymap.set({ "n", "v" }, "<leader>pmp", "<cmd>Lazy profile<CR>", { desc = "Open Lazy profile" })       
-- Harpoon   "local harpoon = require("harpoon")   harpoon:setup()   +vim.keymap.set("n", "<leader>a", function()   	harpoon:list():append()   3end, { desc = "Add current file to Harpoon list" })   'vim.keymap.set("n", "<C-e>", function()   -	harpoon.ui:toggle_quick_menu(harpoon:list())   &end, { desc = "Toggle Harpoon menu" })   +vim.keymap.set("n", "<leader>h", function()   	harpoon:list():select(1)   ,end, { desc = "Got to first file in list" })   +vim.keymap.set("n", "<leader>j", function()   	harpoon:list():select(2)   -end, { desc = "Got to second file in list" })   +vim.keymap.set("n", "<leader>k", function()   	harpoon:list():select(3)   ,end, { desc = "Got to third file in list" })   +vim.keymap.set("n", "<leader>l", function()   	harpoon:list():select(4)   -end, { desc = "Got to fourth file in list" })   <-- Toggle previous & next buffers stored within Harpoon list   )vim.keymap.set("n", "<C-S-P>", function()   	harpoon:list():prev()   .end, { desc = "Go to previous file in list" })   )vim.keymap.set("n", "<C-S-N>", function()   	harpoon:list():next()   *end, { desc = "Go to next file in list" })       
-- Trouble   ,vim.keymap.set("n", "<leader>to", function()   	require("trouble").open()   end, { desc = "Open trouble" })   ,vim.keymap.set("n", "<leader>tw", function()   1	require("trouble").open("workspace_diagnostics")   -end, { desc = "Open workspace diagnostics" })   ,vim.keymap.set("n", "<leader>td", function()   0	require("trouble").open("document_diagnostics")   ,end, { desc = "Open document diagnostics" })   Zvim.keymap.set("n", "<leader>tr", "<cmd>TroubleRefresh<CR>", { desc = "Refresh trouble" })   -vim.keymap.set("n", "<leader>tlr", function()   *	require("trouble").open("lsp_references")   &end, { desc = "Open lsp references" })   -vim.keymap.set("n", "<leader>tld", function()   +	require("trouble").open("lsp_definitions")   'end, { desc = "Open lsp definitions" })   -vim.keymap.set("n", "<leader>tlt", function()   0	require("trouble").open("lsp_type_definitions")   ,end, { desc = "Open lsp type definitions" })       -- Todo Trouble   tvim.keymap.set("n", "<leader>ttd", ":TodoTrouble keywords=TODO,FIX,WARN<CR>", { desc = "Find TODOs, FIXes, WARNs" })       -- Telescope   ,local builtin = require("telescope.builtin")   Nvim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })   Lvim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Find git files" })   ,vim.keymap.set("n", "<leader>ps", function()   :	builtin.grep_string({ search = vim.fn.input("Grep > ") })   !end, { desc = "Project search" })       -- Undotree   ]vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree window" })5��            O   [   V               �      +      �    V                      +                     �       "   S      g      F       �      �      5��