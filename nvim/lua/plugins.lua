return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'liuchengxu/vim-clap'
    use 'jiangmiao/auto-pairs'
    use 'glepnir/dashboard-nvim'
    use 'sheerun/vim-polyglot'
    use 'neovim/nvim-lspconfig'

    -- Completion:
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    
    use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons" ,
    wants = "nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()

      require("nvim-tree").setup {
        hijack_cursor = true,
        auto_close = true,
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
  
    use 'lukas-reineke/indent-blankline.nvim'
    use 'feline-nvim/feline.nvim'
end)
