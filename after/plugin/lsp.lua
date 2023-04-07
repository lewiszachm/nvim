-------------------------------------------------------------------------------
-- LSP CONFIG FOR NEOVIM (lsp.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/VonHeikemen/lsp-zero.nvim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- lsp-zero provides an interface for running lsp-config (language server
-- settings), nvim-cmp (completion), and Mason (language Server manager) with a
-- minimal ammount of configuration needed. This is where settings for most of
-- that lives.

local lsp = require('lsp-zero').preset({
    name = 'minimal', -- minimal preset. Recommend not to change.

    -- enable default keymaps
    set_lsp_keymaps = true,

    -- disable completion managing to allow for custom settings defined below
    manage_nvim_cmp = false,
})

------------------------ Languages to auto-install ----------------------------

-- Obviously add or remove languages you do or don't use.
-- A full list can be found at https://github.com/neovim/nvim-lspconfig
-- You can also manually install langauges with :Mason (this just does it for
-- you)
-- :Mason is also how you'll update language servers
lsp.ensure_installed({
    'asm_lsp',
    'bashls',
    'clangd',
    'cmake',
    'cssls',
    'html',
    'jdtls',
    'jsonls',
    'lemminx',
    'ltex',
    'lua_ls',
    'pylsp',
    'quick_lint_js',
    'rust_analyzer',
    'tsserver',
    'vimls',
    'yamlls'
})

----------------------- Custom completion settings ----------------------------

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

-- keymaps for completion (cmp)
local cmp_mappings = lsp.defaults.cmp_mappings({

-- Ctrl-p to select the previous item in the list
['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),

-- Ctrl-n to select the next item in the list
['<C-n>'] = cmp.mapping.select_next_item(cmp_select),

-- Ctrl-y to confirm selection
['<C-y>'] = cmp.mapping.confirm({ select = true }),

-- Ctrl-Enter to cancel selection
['<C-Cr>'] = cmp.mapping.complete(),

})

-- configuring basic behaviour
local cmp_config = lsp.defaults.cmp_config({

    -- don't pre-select completions.
    preselect = 'none',

    -- show completions in a pop-up menu that doesn't auto-select or insert
    -- same options as completeopt in init.lua
    completion = {
        completeopt = 'menuone,noinsert,noselect'
    },

    -- draw border around menu
    window = {
        completion = cmp.config.window.bordered()
    },

    -- apply keymaps defined above
    mapping = cmp_mappings
})

-------------------------- keymaps for lsp-zero -------------------------------

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    -- g,d to see definition of the item under the cursor
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

    -- Shift-k to show floating info for the item under the cursor
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

    -- leader,v,w,s shows quickfix list for items matching a query
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)

    -- leader,v,d shows floating diagnostic for the item under the cursor
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

    -- ],d goes to the next diagnostic item
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)

    -- [,d goes to the previous diagnostic item
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)

    -- leader,v,c,a shows code-actions for the item under the cursor
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)

    -- leader,v,r,r shows all references of the item under the cursor
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)

    -- leader,v,r,n lets you rename all instances of the item under the cursor
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)

    -- Ctrl-h shows signature help for the item under the cursor
    vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

end)



-- this just applies our config
lsp.setup()
cmp.setup(cmp_config)



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
