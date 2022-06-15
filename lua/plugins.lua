return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- 主题插件
    use 'w0ng/vim-hybrid'

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
        "akinsho/bufferline.nvim",
        requires = {
            "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
        },
        config = function()
            require("conf.bufferline")
        end
    }

    -- 代码高亮
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
