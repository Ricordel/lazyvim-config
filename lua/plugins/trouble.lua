return {
  "folke/trouble.nvim",
  keys = {
    {
      "<leader>xe",
      "<cmd>Trouble diagnostics toggle filter.severity=vim.diagnostic.severity.ERROR<cr>",
      desc = "Workspace Errors (Trouble)",
    },
    {
      "<leader>xE",
      "<cmd>Trouble diagnostics toggle filter.buf=0 filter.severity=vim.diagnostic.severity.ERROR<cr>",
      desc = "Buffer Errors (Trouble)",
    },
    {
      "<leader>xw",
      "<cmd>Trouble diagnostics toggle filter.severity={vim.diagnostic.severity.ERROR,vim.diagnostic.severity.WARN}<cr>",
      desc = "Workspace Errors/Warnings (Trouble)",
    },
    {
      "<leader>xW",
      "<cmd>Trouble diagnostics toggle filter.buf=0 filter.severity={vim.diagnostic.severity.ERROR,vim.diagnostic.severity.WARN}<cr>",
      desc = "Buffer Errors/Warnings (Trouble)",
    },
  },
}
