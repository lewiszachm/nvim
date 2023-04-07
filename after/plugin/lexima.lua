-------------------------------------------------------------------------------
-- LEXIMA CONFIG FOR NEOVIM (lexima.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/cohama/lexima.vim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- this plugin auto-closes brackets, quotes, etc. Also has options to auto
-- close/end functions, loops, etc, among a few others

-- For the most part the default settings are good, but I didn't want endwise
-- rules, abbreviation triggers, or anything mapped to escape, so this disables
-- all that.
vim.g.lexima_enable_endwise_rules = '0'
vim.g.lexima_map_escape = ''
vim.g.lexima_disable_abbrev_trigger = '1'



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
