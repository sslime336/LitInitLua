return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Nord theme
    use 'shaunsingh/nord.nvim'
    -- zephyr theme
    use 'glepnir/zephyr-nvim'

    -- 文件树
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 美化 tab 页
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- 起始页
    use {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup()
        end
    }

    -- star⭐ 更多的起始页仪表盘
    use { 'glepnir/dashboard-nvim' }

    -- lsp lspconfig/installer
    use { 'neovim/nvim-lspconfig', 'williamboman/mason.nvim' }
    use { "williamboman/mason-lspconfig.nvim" }

    -- debug 协议
    use 'mfussenegger/nvim-dap'

    -- lint & formatter
    use 'jose-elias-alvarez/null-ls.nvim'

    -- EasyMotion
    use 'easymotion/vim-easymotion'

    -- 代码补全相关: 补全来源等
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
    use 'hrsh7th/cmp-path' -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'

    -- snippets
    use 'onsails/lspkind-nvim' -- lspkind
end)
