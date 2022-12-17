local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- themes
  use 'ellisonleao/gruvbox.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'marko-cerovac/material.nvim'
  use 'sainnhe/gruvbox-material'
  use "rebelot/kanagawa.nvim"
  use 'navarasu/onedark.nvim'
  use 'nyoom-engineering/oxocarbon.nvim'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- treesitter, lsp
  use 'nvim-treesitter/nvim-treesitter' -- nvim-treesitter
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- cmp-nvim
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'numToStr/Comment.nvim' -- comment
  use 'windwp/nvim-autopairs' -- autopairs
  use 'ahmedkhalf/project.nvim' -- mostly for project telescoping

  -- tabs/buffers
  use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- config here
      }
    end
  }

  use 'ggandor/lightspeed.nvim' -- kachow

  use({
    "goolord/alpha-nvim",
    config = function()
      require("dashboard-custom")
    end,
  })

  use 'lukas-reineke/indent-blankline.nvim'
  use 'tjdevries/express_line.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'nvim-tree/nvim-web-devicons'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}


end)
