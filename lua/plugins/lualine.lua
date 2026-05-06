return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local roslyn_loading = false

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "roslyn" then
          roslyn_loading = true
        end
      end,
    })

    vim.api.nvim_create_autocmd("LspDetach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "roslyn" then
          roslyn_loading = false
        end
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "RoslynInitialized",
      callback = function()
        roslyn_loading = false
      end,
    })

    table.insert(opts.sections.lualine_x, 1, {
      function()
        local s = vim.g._roslyn_slnf
        return s and ("󰡱 " .. vim.fs.basename(s)) or ""
      end,
      cond = function() return vim.g._roslyn_slnf ~= nil end,
      color = function() return { fg = Snacks.util.color("Comment") } end,
    })

    table.insert(opts.sections.lualine_x, 1, {
      function() return " Roslyn loading…" end,
      cond = function() return roslyn_loading end,
      color = function() return { fg = Snacks.util.color("Comment") } end,
    })

    table.insert(opts.sections.lualine_x, 1, {
      function()
        local s = vim.lsp.status()
        return s ~= "" and s or ""
      end,
      cond = function() return vim.lsp.status() ~= "" end,
      color = function() return { fg = Snacks.util.color("Comment") } end,
    })

    return opts
  end,
}
