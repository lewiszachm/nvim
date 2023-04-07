-------------------------------------------------------------------------------
-- INDENT-BLANKLINE CONFIG (indent-blankline.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/lukas-reineke/indent-blankline.nvim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- This plugin adds indicators for indents and a couple other things

-- I'm actually not really using this plugin at all right now (just a bit more
-- clutter than I personally like), but it is really handy sometimes and I
-- might change my mind, so left it installed, albeit disabled.
-- I don't even remember what all the settings are, so just look them up on
-- github!

require('indent_blankline').setup({
    enabled = false, -- change this to true to enable the plugin

    -- play with these (and others shown on github) to adjust settings
    show_current_context = true,
--    show_current_context_start = true,
    show_end_of_line = true,
    space_char_blankline = " ",
    use_treesitter = true,
    use_treesitter_scope = true,
})



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
