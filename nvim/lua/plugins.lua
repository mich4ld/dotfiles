return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'sheerun/vim-polyglot'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
        hijack_cursor = true,
        view = {
          width = 40
        }
            }
        end
    }
	use({
       "catppuccin/nvim",
           as = "catppuccin"
	})

    use 'feline-nvim/feline.nvim'
    use "lukas-reineke/indent-blankline.nvim"
end)

