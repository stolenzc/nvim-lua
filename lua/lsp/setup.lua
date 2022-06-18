local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end


lsp_installer.setup({
    ensure_install = {"sumneko_lua", "pyright"},
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
    sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
    pyright = require "lsp.python"    -- /lua/lsp/python.lua
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end
