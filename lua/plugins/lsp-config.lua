--[[
local lsps = require("common.lsp-setup")
local lspconfig = require("lspconfig")

for key, value in pairs(lsps) do
    lspconfig[key].setup(value)
end
--]]
