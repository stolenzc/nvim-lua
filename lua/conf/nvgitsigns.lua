local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
    return
end

gitsigns.setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    -- add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    -- change       = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    -- delete       = {hl = 'GitSignsAdd'   , text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    -- topdelete    = {hl = 'GitSignsAdd'   , text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    -- changedelete = {hl = 'GitSignsAdd'   , text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true, -- 是否显示git修改状态符号列   Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- 是否高亮行号列              Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- 是否高亮修改的行            Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- 是否高亮修改的内容          Toggle with `:Gitsigns toggle_word_diff`
  -- 在.git目录下放置一个检测已打开文件的检测程序
  watch_gitdir = {
    interval = 1000,            -- 检测程序轮询时间，毫秒为单位
    follow_files = true         -- git mv 移动文件时，切换buffer到新目录
  },
  attach_to_untracked = true,
  current_line_blame = true, -- 在行末尾添加一个最后修改该行的备注 Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,               -- 显示blame文本
    virt_text_pos = 'eol',          -- 文本显示位置 'eol' | 'overlay' | 'right_align'
    delay = 1000,                   -- 延迟显示时间，单位为毫秒
    ignore_whitespace = false,      -- 是否忽略空白行
  },
  -- 显示git blame格式
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  -- 显示标记的优先级:
  sign_priority = 6,
  -- 更新的去抖动时间，单位为毫秒
  update_debounce = 100,
  status_formatter = nil, -- Use default
  -- 文件的最大长度
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
