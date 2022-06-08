vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- 本地变量
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', 'J', '5j', opt)
map('n', 'K', '5k', opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)