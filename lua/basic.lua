-- utf-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 3
vim.o.sidescrolloff = 3
-- 显示行号，不显示相对行号
vim.wo.number = true
vim.wo.relativenumber = false
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "100"
-- 缩进4个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索高亮
vim.o.hlsearch = true
-- 边输入边搜索
vim.o.incsearch = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 1
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.wo.wrap = false
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,]"
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
-- vim.o.timeoutlen = 500
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 是否显示不可见字符
vim.o.list = false
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.listchars = "space:·,tab:->"
-- 补全增强
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"
-- 补全最多显示10行
vim.o.pumheight = 10
-- 永远显示 tabline
vim.o.showtabline = 2
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false
-- 配置剪切板
vim.opt.clipboard = "unnamedplus"
-- 兼容24位色彩支持 Macos 不支持真彩色显示
vim.o.termguicolors = false





-- There are some settings, which are automatically configured in neovim
-- you can view it with :h vim-differences

local settings = {
    g = {
        -- Enable Lua's ftplugin
        do_filetype_lua = 1,
        -- Do not disable ftplugin
        did_load_filetypes = 0,
    },
    opt = {
        -- Turn on syntax highlighting
        syntax = "enable",
        -- Set background mode
        background = "dark",
        -- Set the character encoding used internally by nvim
        encoding = "utf-8",
        -- Set the character encoding of the file where the current buffer is located
        fileencoding = "utf-8",
        -- Allow plugin loading of file types
        filetype = "plugin",
        -- Whether to create a backup file
        backup = false,
        -- Whether to create a swap file
        swapfile = false,
        -- Whether to create backups when writing files
        writebackup = false,
        -- Set completion options
        completeopt = "menuone,noselect",
        -- Set the width of the symbol column, if not set, it will cause an exception when displaying the icon
        signcolumn = "yes:1",
        -- Allow the window to display the edited filename
        title = true,
        -- Allows to display the current vim mode (no need)
        showmode = false,
        -- Set the height of the completion menu
        pumheight = 10,
        -- Speed up response time
        updatetime = 100,
        -- Set timeout
        timeoutlen = 500,
        -- Show command line
        showcmd = true,
        -- Allow switching from unsaved buffers
        hidden = true,
        -- Terminal supports more colors
        termguicolors = false,
        -- Highlight the current line
        cursorline = true,
        -- Allow absolute line numbers
        number = true,
        -- Allow relative line numbers
        relativenumber = true,
        -- Display the row and column numbers of the cursor position (off, don't need it)
        ruler = false,
        -- Set the width of the number column, default is 4
        numberwidth = 2,
        -- Set how many lines are always displayed on the upper and lower sides of the cursor
        scrolloff = 21,
        -- Set how many columns are always displayed to the left and right of the cursor, requires wrap = true.
        -- wrap = true,
        -- sidescrolloff = 11,
        -- Allow the use of the mouse
        mouse = "a",
        -- Allow padding with special characters
        list = false,
        -- Highlight while searching
        incsearch = true,
        -- Allow search highlighting
        hlsearch = true,
        -- Allows to search the entire file repeatedly (continuation of the search after the last result will return to the first result)
        -- wrapscan = true,
        -- Allow matching symbols to be displayed (no need, there is a plugin for auto-completing parentheses)
        showmatch = false,
        -- Default is 5, set the duration of showmatch
        matchtime = 2,
        -- Turn on spell check
        spell = true,
        -- Set the language for spell checking
        spelllang = "en_us,cjk",
        -- Set completion in command mode to appear as a menu
        wildmenu = true,
        -- Set command line height
        cmdheight = 1,
        -- Ignore case when searching
        ignorecase = true,
        -- Intelligent case sensitivity when searching (if there is upper case, turn off case ignoring)
        smartcase = true,
        -- Open fold
        foldenable = true,
        -- Set the folding method
        foldmethod = "indent",
        -- Show collapsed hierarchy in symbol column
        foldcolumn = "0",
        -- Maximum folding level
        foldlevel = 100,
        -- Natural line breaks
        linebreak = true,
        -- Use the system clipboard
        clipboard = "unnamedplus",
        -- Automatically read files modified in other editors
        autoread = true,
        -- Auto-indent, press o on the current line, the new line is always aligned with the current line
        autoindent = true,
        -- Set smart indent
        smartindent = true,
        -- Set allowed word separators (chains with _ are allowed in words)
        iskeyword = "@,48-57,_,192-255",
        -- Set options for saving sessions
        sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,globals",
        -- Enable global status bar
        laststatus = 3,
        -- After turning on the global status bar, we should set a more obvious separator
        fillchars = "vert:┃,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣",
    },
    disable_builtin_plugins = {
        -- "netrw",
        -- "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "2html_plugin",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
    },
}

-- vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("tab:↹ ")

vim.opt.shortmess:append("sI") -- reduce the display of <c-g>
-- Reduce the display of <c-g>
vim.opt.shortmess:append("sI")
-- Allow h and l newlines
vim.opt.whichwrap:append("<>[]hl")
-- Remove auto-comments
vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }

-- for prefix, tab in pairs(settings) do
--     if prefix ~= "disable_builtin_plugins" then
--         for key, value in pairs(tab) do
--             vim[prefix][key] = value
--         end
--     else
--         for _, plugin in pairs(tab) do
--             vim.g["loaded_" .. plugin] = 1
--         end
--     end
-- end

return settings
