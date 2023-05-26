-------------------------------------------------------------------------------
-- CODEWINDOW CONFIG FOR NEOVIM (codewindow.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/gorbit99/codewindow.nvim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- codewindow gives you a vscode style minimap
-- toggle with leader,m,m

local opts = {

    -- enable or disable in terminal buffers
    active_in_terminals = false,

    -- true to show on startup, false to start hidden
    auto_enable = false,

    -- any file types the minimap should not be shown on
    exclude_filetypes = {},

    -- max height the minimap can take, including borders
    max_minimap_height = nil,

    -- if auto_enable = true, don't open for files with more lines than this
    max_lines = nil,

    -- width is physical amount of pixels the minimap takes up
    minimap_width = 22,

    -- multiplier is how many characters one dot in the map represents
    width_multiplier = 2,

    -- show cursor position on the minimap
    show_cursor = true,

    -- border style for the map (single, double, or none)
    window_border = 'single',

    -- set to false to disable color highlighting on the map
    use_treesitter = true,

    -- use the LSP to show errors and warnings on the minimap
    use_lsp = true,

    -- use small dots to show git additions and deletions
    use_git = true,

    -- z-index the floating window will reside on
    z_index = 2,
}

-- apply settings and default keymaps
require('codewindow').setup(opts)
require('codewindow').apply_default_keybinds()


-- codewindow specific highlight groups
-- vim.cmd('highlight CodeWindowBorder guibg = none')
-- vim.cmd('highlight CodeWindowBackground guibg = none')
-- vim.cmd('highlight CodeWindowWarn guibg = none')
-- vim.cmd('highlight CodeWindowError guibg = none')
-- vim.cmd('highlight CodeWindowAddition guibg = none')
-- vim.cmd('highlight CodeWindowDeletion guibg = none')
-- vim.cmd('highlight CodewindowUnderline guibg = none')



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
