-------------------------------------------------------------------------------
-- TELESCOPE CONFIG FOR NEOVIM (telescope.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/nvim-telescope/telescope.nvim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- fuzzy finder for neovim!

-- just to make things easier to read
local builtin = require('telescope.builtin')

-- leader,f,f to fuzzy find
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- leader,g,f to search git files (obv only works in a git repo)
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

-- leader,p,s to search through your project using grep!
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)



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
