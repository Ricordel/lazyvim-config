return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      http = {
        iliad = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://iliad.codix.scw.eu",
              api_key = "CODIX_API_KEY",
            },
            schema = {
              model = {
                default = "codiX-agent",
              },
            },
          })
        end,
      },
    },
    interactions = {
      chat = {
        adapter = "iliad",
      },
      inline = {
        adapter = "iliad",
      },
    },
  },
}