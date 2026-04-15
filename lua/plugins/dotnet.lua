return {
    -- No longer needed without omnisharp                                                                                                                                                                            
    { "Hoffs/omnisharp-extended-lsp.nvim", enabled = false },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                omnisharp = { enabled = false },
                csharp_ls = {
                    mason = false, -- already installed as a dotnet global tool
                },
            },
        },
    },
}
