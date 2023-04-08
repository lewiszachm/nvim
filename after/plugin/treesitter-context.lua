-------------------------------------------------------------------------------
-- TREESITTER-CONTEXT CONFIG FOR NEOVIM (treesitter-context.lua)
-- Zachery Lewis (lewiszachm) / 07 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/nvim-treesitter/nvim-treesitter-context

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- pins the context of code currently visible in the buffer to the top line

require'treesitter-context'.setup{

    -- enable the plugin
    enable = true,

    -- how many lines the window should span. <= 0 mean no limit.
    max_lines = 0,

    -- minimum editor window height to enable context. <= 0 mean no limit.
    min_window_height = 0,

    -- if true, also pin line numbers for context items
    line_numbers = true,

    -- maximum number of lines to collapse for a single context line
    multiline_threshold = 20,

    -- context lines to discard if max_lines is exceeded. ('inner' or 'outer')
    trim_scope = 'outer',

    -- line used to calculate context. ('cursor' or 'topline')
    mode = 'cursor',

    -- separator between context and content. single character string (ie: '-')
    -- when set, context will only show up when there are at least 2 lines
    -- above cursorline.
    separator = '-',

    -- the Z-index of the context window
    zindex = 1,
}



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
