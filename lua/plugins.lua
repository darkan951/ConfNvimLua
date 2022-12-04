return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	use("google/vim-jsonnet")
    use("mfukar/robotframework-vim")

    use("tpope/vim-surround")
    use("tpope/vim-repeat")

    use "EdenEast/nightfox.nvim"
    use "folke/tokyonight.nvim"

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use({
      "petertriho/nvim-scrollbar",
      config = function()
        require("scrollbar").setup()
      end,
    })

    -- enable LSP
    use({ "neovim/nvim-lspconfig" })
    -- language server installer
    use({ "williamboman/nvim-lsp-installer" })

    use({'nvim-treesitter/nvim-treesitter'})
    

end)
