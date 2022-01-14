return {
    sumneko_lua = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { 'vim' },
                },
            },
        },
    },
    texlab = {
        settings = {
            auxDirectory = "build",
            diagnosticsDelay = 150,
            forwardSearch = {
                executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
                args = {"%l", "%p", "%f"},
            }
        }
    },
}
