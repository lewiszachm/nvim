-------------------------------------------------------------------------------
-- NERDCOMMENTER CONFIG FOR NEOVIM (nerdcommenter.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/preservim/nerdcommenter

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- This plugin adds shortcuts to comment or uncomment lines and blocks of code

-- enable default mappings.
-- Check github for full list, but most important is leader,c,leader (toggles
-- comment state of current line or highlight block in visual mode)
vim.g.NERDCreateDefaultMappings = 1

-- add a space after comment delimiters by default
vim.g.NERDSpaceDelims = 1

-- use compact syntax for sexy comments
vim.g.NERDCompactSexyComs = 1

-- align comment delimiters (left-wise) instead of following code indent
vim.g.NERDDefaultAlign = 'left'

-- Some languages have alternate delimiters. Java for example.
--vim.g.NERDAltDelims_java = 1

-- You can specify custom delimiters to use with specific languages
-- C is used as an example
-- vim.g.NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }

-- Comment blank lines also
vim.g.NERDCommentEmptyLines = 1

-- trim trailing blank space when uncommenting
vim.g.NERDTrimTrailingWhitespace = 1

-- enable nerdcommenter to check if all selected lines are commented or not
vim.g.NERDToggleCheckAllLines = 1



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
