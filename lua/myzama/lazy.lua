local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false},

    -- gruvbox colorscheme
    {"morhetz/gruvbox", lazy = false},

    -- completion
    {"hrsh7th/nvim-cmp", lazy = false},
    {"hrsh7th/cmp-nvim-lsp", lazy = false},
    {"saadparwaiz1/cmp_luasnip", lazy = false},
    {"rafamadriz/friendly-snippets", lazy = false},
    {
     "L3MON4D3/LuaSnip",
     dependencies = { "rafamadriz/friendly-snippets" },
     lazy = false
    },

    -- lsp
    {"williamboman/mason.nvim", lazy = false},
    {"williamboman/mason-lspconfig.nvim", lazy = false},
    {"neovim/nvim-lspconfig", lazy = false},

    -- telescope
    {
     "nvim-telescope/telescope.nvim", tag = "0.1.5",
     dependencies = { "nvim-lua/plenary.nvim" },
     lazy = false
    },

    -- harpoon
    {"ThePrimeagen/harpoon", lazy = false},

    -- vim be good
    {"ThePrimeagen/vim-be-good", lazy = false},
})
