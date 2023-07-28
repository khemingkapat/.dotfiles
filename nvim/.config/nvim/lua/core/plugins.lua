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


local plugins = {
    {
	'nvim-tree/nvim-tree.lua',
    	dependencies = {'nvim-tree/nvim-web-devicons'}, -- optional, for file icons
    	tag = 'nightly' -- optional, updated every week. (see issue #1193)
    },
    'nvim-lualine/lualine.nvim',
    'windwp/nvim-autopairs',
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
	dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    'nvim-treesitter/nvim-treesitter',
    'terrortylor/nvim-comment',

    -- colorscheme
    {'dracula/vim',as='dracula'},
    { "catppuccin/nvim", name = "catppuccin" },
    --- lsp
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',-- formatter

    -- terminal
	"akinsho/toggleterm.nvim",

  -- cmp plugins
  "hrsh7th/nvim-cmp", -- The completion plugin
  "hrsh7th/cmp-buffer", -- buffer completions
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-path" ,-- path completions
  "hrsh7th/cmp-cmdline", -- cmdline completions
  "saadparwaiz1/cmp_luasnip", -- snippet completions

  -- snippets
  "L3MON4D3/LuaSnip", --snippet engine
  "rafamadriz/friendly-snippets", -- a bunch of snippets to use

  "christoomey/vim-tmux-navigator"
}

local opts = {}

require('lazy').setup(plugins,opts)
