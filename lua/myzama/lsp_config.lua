-- mason
require("mason").setup()

-- installed language servers
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pylsp"}
})

-- lua
require("lspconfig").lua_ls.setup{}

-- python
require"lspconfig".pylsp.setup{
    settings = {
        pylsp = {
            configurationSources = {
                "flake8"
            },
            plugins = {
                flake8 = {
                    enabled = true,
                    maxLineLength = 100
                }
            }
        }
    }
}
