-------------------------------------------------------------------------------
-- HARPOON CONFIG FOR NEOVIM (harpoon.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/ThePrimeagen/harpoon

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- This plugin lets you assign shortcuts to files so you can easily jump
-- between them.

local ui = require("harpoon.ui")
local mark = require("harpoon.mark")

-- leader,h toggles quickmenu (navigate with jk, del with x to remove items)
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

-- leader,a adds current file to harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)

-- Alt-1 through Alt-0 switch between harpooned files
vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<C-5>", function() ui.nav_file(5) end)
vim.keymap.set("n", "<C-6>", function() ui.nav_file(6) end)
vim.keymap.set("n", "<C-7>", function() ui.nav_file(7) end)
vim.keymap.set("n", "<C-8>", function() ui.nav_file(8) end)
vim.keymap.set("n", "<C-9>", function() ui.nav_file(9) end)
vim.keymap.set("n", "<C-0>", function() ui.nav_file(10) end)



-- MIT License
--
-- Copyright (c) 2023 Zachery Lewis (lewiszachm)
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to
-- deal in the Software without restriction, including without limitation the
-- rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
-- sell copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-- IN THE SOFTWARE.
