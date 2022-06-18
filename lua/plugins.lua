return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- 主题插件
    use 'w0ng/vim-hybrid'
    use "EdenEast/nightfox.nvim"

    -- 中文文档
    use "yianwillis/vimcdoc"

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        }
    }

    -- 多tab标签
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = {
            'famiu/bufdelete.nvim',     -- 删除buffer时不影响现有布局
            'kyazdani42/nvim-web-devicons'
        }
    }

    -- git 侧栏标记
    use {
          'lewis6991/gitsigns.nvim',
          -- tag = 'release' -- To use the latest release
        }
    -- 代码高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- 成对括号
    use "windwp/nvim-autopairs"

    -- 模糊搜索
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- lsp配置
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer'
    }
    use {
        'hrsh7th/cmp-nvim-lsp', -- { name = nvim_lsp }
        'hrsh7th/cmp-buffer',   -- { name = 'buffer' },
        'hrsh7th/cmp-path',     -- { name = 'path' }
        'hrsh7th/cmp-cmdline',  -- { name = 'cmdline' }
        'hrsh7th/nvim-cmp',
        -- vsnip
        'hrsh7th/cmp-vsnip',    -- { name = 'vsnip' }
        'hrsh7th/vim-vsnip',
        'rafamadriz/friendly-snippets',
        -- lspkind
        'onsails/lspkind-nvim'
    }

end)
