-------------------------------------------------------------------------------
-- TREESITTER CONFIG FOR NEOVIM (treesitter.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/nvim-treesitter/nvim-treesitter

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- treesitter uses parsers to provide better syntax highlighting

require'nvim-treesitter.configs'.setup {

    -- parsers to auto-install
    -- can be a list of parser names, or just "all"
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "html",
        "java",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "python",
        "rust",
        "toml",
        "typescript",
        "vim",
        "yaml"
    },

    -- install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- automatically install missing parsers when entering buffer
    -- set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- holds settngs for the actual highlighting
    highlight = {

        -- `false` here will essentially disable the whole extension
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the
        -- same time. Only set this to `true` if you specifically need vim's
        -- built-in highlighting to be enabled.
        -- Instead of just true or false, it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
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
