-------------------------------------------------------------------------------
-- NEOVIM INIT (init.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim

-- documentation: https://neovim.io/doc/
--       options: https://neovim.io/doc/user/options.html
--    keymapping: https://neovim.io/doc/user/map.html

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- load packer config / plugin list
require ("config.packer")

-------------------------------- OPTIONS --------------------------------------

-- enable 24bit rgb color. REQUIRED for proper highlighting, etc
vim.opt.termguicolors = true

-- enable mouse support (a for all modes)
-- unseparated list of letters corresponding to each mode
-- (for instance, mouse = "nvi" enables mouse in normal, visual, and insert)
vim.opt.mouse = "a"

-- sets shapes for cursor in different modes (if terminal supports gui cursor)
-- leave blank to just use standard terminal block cursor
vim.opt.guicursor = ""

-- highlights the line or column (or both) that your cursor is on
vim.opt.cursorline = false
vim.opt.cursorcolumn = false

-- always keep the cursor x lines within the window
vim.opt.scrolloff = 8

-- toggle line numbers and choose between relative or absolute
vim.opt.number = true
vim.opt.relativenumber = true

-- enable / disable the sign column (error/warning signs next to line numbers)
vim.opt.signcolumn = "yes"

-- render a solid column this many spaces from the left
-- (set to 80 for a PEP-8 page-width guide)
-- vim.opt.colorcolumn = "80"
vim.opt.colorcolumn = "0"

-- tab and indent settings.
vim.opt.tabstop = 4 -- number of spaces a tab takes up
vim.opt.softtabstop = 4 -- number of spaces a tab counts for when editing
vim.opt.shiftwidth = 4 -- number of spaces auto/smart-indent uses
vim.opt.expandtab = true -- insert spaces instead of real tabs
vim.opt.autoindent = true -- create new line with same indent as previous line
vim.opt.smartindent = true -- create indents intuitively

-- visual indicator of tabs, trailing whitespace, and non-breakable space chars
vim.opt.list = true

-- add indicators to show spaces
-- a bit too much clutter for me, but left here just in case
-- vim.opt.listchars:append "space:⋅"

-- enable or disable line-wrapping
vim.opt.wrap = false

-- memory settings
vim.opt.swapfile = false -- when true, use a swap file for the buffer
vim.opt.backup = false -- make a backup before overwriting a file
vim.opt.undofile = true -- write undo history to a file when saving

-- swapfile written to disk if nothing is typed for this many milliseconds
vim.opt.updatetime = 25

-- use the system clipboard
vim.opt.clipboard = "unnamedplus"

-- search settings
vim.opt.hlsearch = true -- highlight search results
vim.opt.incsearch = true -- incrementally search while typing

-- append '@' symbol to list of characters recognized in file and path name
-- searches
vim.opt.isfname:append("@-@")

-- options for insert mode completion.
vim.opt.completeopt = "menuone,noinsert,noselect"
-- menu - use a pop-up menu for completions if there is more than one result
-- menuone - use a pop-up menu for completions, even with only one result
-- longest - only insert the longest common text
-- preview - show extra information in the preview window
-- noinsert - do not insert any text until the user confirms a selection
-- noselect - do not select an item in the menu without user input

-- shows effects of a command incrementally in the buffer.
vim.opt.inccommand = "split"
-- split - show partial offscreen results in a preview window
-- nosplit - do not show partial offscreen results
-- "" - disable inccommand

-- press tab while typing a command to get a list of matched completions
-- continue pressing tab, or use left and right arrows, to cycle through
-- lots of options for this, see neovim docs
vim.opt.wildmode = "lastused:full"
vim.opt.wildmenu = true -- enable / disable the wildcard menu
vim.opt.wildoptions = "tagfile"

-- always fully redraw the screen if set to false.
-- only really need to choose true if you are using a very old and slow term
vim.opt.lazyredraw = false

-- enable plugin file loading for certain filetypes that have one
vim.cmd('filetype plugin on')

-------------------------------- KEYMAPS --------------------------------------

-- map the leader key (I like to use spacebar)
vim.g.mapleader = " "

-- leader,p,v opens netrw (vim's file explorer)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- use Shift-j and Shift-k to move code on highlighted lines up and down the
-- page in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in center of screen when jumping around and searching etc
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

-- leader,p to keep copied text in register when pasting instead of replacing
vim.keymap.set("x", "<leader>p", "\"_dp")

-- yank to system register (instead of just vim register)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- leaving insert mode with Esc won't change cursor position
vim.keymap.set("i", "<Esc>", "<Esc>l")

-- jk = Esc in insert mode (and also won't move cursor)
vim.keymap.set("i", "jk", "<Esc>l")

-- Get rid of Q
vim.keymap.set("n", "Q", "<nop>")

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- leader,s to edit every instance of the item under the cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- leader,x to make current file executeable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})



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
