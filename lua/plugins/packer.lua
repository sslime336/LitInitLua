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

    -- 模糊查找 telescope.nvim
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- 起始页仪表盘
    use { 'glepnir/dashboard-nvim' }

    -- lsp
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

    -- 代码高亮插件 nvim-treesitter，不止高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
