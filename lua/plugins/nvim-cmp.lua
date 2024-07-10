return {
    {
        "hrsh7th/nvim-cmp",

        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local cmp = require("cmp")

            opts.mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            })

            -- opts.completion = { completeopt = "menu,menuone,noselect" }
        end,

    }
}
