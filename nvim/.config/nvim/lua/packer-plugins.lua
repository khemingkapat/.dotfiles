vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- packer can manage itself
	use 'wbthomason/packer.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'nvim-lualine/lualine.nvim'
    use 'windwp/nvim-autopairs'
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
        }
    use 'nvim-treesitter/nvim-treesitter'
    use 'terrortylor/nvim-comment'
    -- use 'neovim/nvim-lspconfig'

    -- colorscheme
    use {'dracula/vim',as='dracula'}
end)

