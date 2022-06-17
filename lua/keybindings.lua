vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- 本地变量
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)
local map = vim.api.nvim_set_keymap
local bmap = vim.api.nvim_buf_set_keymap
local dgmap = vim.api.nvim_del_keymap
local dbmap = vim.api.nvim_buf_del_keymap
local opt = {noremap = true, silent = true }

map('i', 'jj', '<Esc>', opt)

map('n', 'J', '5j', opt)
map('n', 'K', '5k', opt)

-- 光标移动
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-l>', '<C-w>l', opt)
-- 使用HL替代^$
map("n", "H", "^", opt)
map("v", "H", "^", opt)
map("n", "L", "$", opt)
map("v", "L", "$", opt)
-- 正常模式下 esc取消搜索高亮
map('n', '<ESC>', ':nohlsearch<CR>', opt)

-- 代码缩进
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- nvimTree
map('n', '<leader>g', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>v', ':NvimTreeFindFile<CR>', opt)

-- bufferline
map('n', '<leader>bh', ':BufferLineCyclePrev<CR>', opt)
map('n', '<leader>bl', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bw', ':BufferLinePickClose<CR>', opt)

