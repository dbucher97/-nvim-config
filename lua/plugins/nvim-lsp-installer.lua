local lsp_installer = require 'nvim-lsp-installer'
local lsps = require 'common.lsp-setup'

lsp_installer.on_server_ready(function(server)
    print(server.name)
    print(lsps[server.name])
    server:setup(lsps[server.name] or {})
end)
