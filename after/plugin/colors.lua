-------------------------------------------------------------------------------
-- COLOR SCHEME CONFIG FOR NEOVIM (colors.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/tinted-theming/base16-vim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- These are all settings relating to the colorscheme.

-- Depending on your terminal, you may need this enabled for correct colors
vim.g.base16colorscheme=256

-- Set your colorscheme here!
-- (Full list available at plugin repo)
vim.cmd('colorscheme base16-zenburn')

--------------------------- HIGHLIGHT GROUPS ----------------------------------

-- These are tweaks to make vim look good with a transparent terminal (and
-- also create a more minimal look). Will maybe need to be adjusted if you
-- install a non-base16 colorscheme. Change at your own discretion.
-- The main changes here are disabling backgrounds for most things since vim
-- can't do transparency. If your terminal uses the same scheme as vim, you
-- shouldn't have to change these unless you really want to. Even if you don't
-- use transparency, you'll still get the same minimal look I was going for.
-- If your terminal uses different colors though, you'll want to comment some
-- of these out, otherwise the colors will clash.

-- If you want to set a specific color for any of these, just replace 'none'
-- with a hex code (#ffffff for example)
-- You can also add 'guifg = ' to set the foreground.

-- documentation: https://neovim.io/doc/user/syntax.html#highlight-groups

-- main background
vim.cmd('highlight Normal guibg = none')

-- non-text background
vim.cmd('highlight NonText guibg = none')

-- number column background
vim.cmd('highlight LineNr guibg = none')

-- sign column background
vim.cmd('highlight SignColumn guibg = none')

-- status line backgrounds
vim.cmd('highlight StatusLine guibg = none')
vim.cmd('highlight StatusLineNC guibg = none')

-- color column (should just be disabled in init.lua, but in case you want to
-- override the color used, here it is)
-- vim.cmd('highlight ColorColumn guibg = none')

-- These two (cursor column and cursor line) really should just be disabled
-- with the options in init.lua, but for some reason vim is really bad at
-- actually disabling them globally, so this is a brute force method.
vim.cmd('highlight CursorColumn guibg = none')
vim.cmd('highlight CursorLine guibg = none')

-- Error message background
vim.cmd('highlight ErrorMsg guibg = none')

-- pop-up menu background
vim.cmd('highlight Pmenu guibg = none')

-- background for selection in pop-up menu
vim.cmd('highlight PmenuSel guibg = none')

-- backround for scrollbar in pop-up menu
vim.cmd('highlight PmenuSbar guibg = none')

-- background for question prompts
vim.cmd('highlight Question guibg = none')

-- background for vertical splits
vim.cmd('highlight VertSplit guibg = none')

-- background for tab lines
vim.cmd('highlight TabLine guibg = none')

-- 'fill' background for tab lines
vim.cmd('highlight TabLineFill guibg = none')

-- selection background for tab lines
vim.cmd('highlight TabLineSel guibg = none')

-- title background
vim.cmd('highlight Title guibg = none')

-- background for warning messages
vim.cmd('highlight WarningMsg guibg = none')

-- background for normal menus
vim.cmd('highlight Menu guibg = none')

-- scrollbar background
vim.cmd('highlight Scrollbar guibg = none')

-- tooltip background
vim.cmd('highlight Tooltip guibg = none')



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
