-------------------------------------------------------------------------------
-- PACKER CONFIG (PLUGIN LIST) FOR NEOVIM (packer.lua)
-- Zachery Lewis (lewiszachm) / 06 Apr 2023

-- config repo: https://github.com/lewiszachm/nvim
-- plugin repo: https://github.com/wbthomason/packer.nvim

-- This file is licensed under the MIT license.
-------------------------------------------------------------------------------

-- Package manager.

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1',
                   'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

--------------------------vvvv put plugins here vvvv---------------------------

    -- base16 color schemes
    use 'tinted-theming/base16-vim'

    -- treesitter (better syntax highlighting)
    use 'nvim-treesitter/nvim-treesitter'

    -- lsp-zero (language server setup. snippets, completions, etc)
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    }

    -- telescope (fuzzyfinding)
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- harpoon (quick file jumping)
    use 'theprimeagen/harpoon'

    -- undotree (better undo features)
    use 'mbbill/undotree'

    -- nerdcommenter (keymaps to toggle commenting)
    use 'preservim/nerdcommenter'

    -- indent-blankline (indent and whitespace indicators)
    use 'lukas-reineke/indent-blankline.nvim'

    -- nvim-highlight-colors (colorize rgb, hex, etc color codes)
    use 'brenoprata10/nvim-highlight-colors'

    -- lexima (autoclose brackets, quotes, etc)
    use 'cohama/lexima.vim'

    -- codewindow (minimap)
    use 'gorbit99/codewindow.nvim'

    -- gentoo syntax
    use 'gentoo/gentoo-syntax'

    -- which key (pop-up keymap legend)
    use {
        'folke/which-key.nvim',
        config = function()
            vim.opt.timeout = true
            vim.opt.timeoutlen = 0
        end
    }
--------------------------^^^^ plugins up here ^^^^ ---------------------------

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
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
