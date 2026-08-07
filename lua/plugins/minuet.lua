return {
  "milanglacier/minuet-ai.nvim",
  opts = {
    provider = "openai_compatible",
    n_completions = 1,
    request_timeout = 8,
    provider_options = {
      openai_compatible = {
        name = "Iliad",
        api_key = "CODIX_API_KEY",
        end_point = "https://iliad.codix.scw.eu/v1/chat/completions",
        model = "codiX-autocomplete",
        stream = true,
        optional = {
          max_tokens = 128,
          temperature = 0.1,
        },
      },
    },
    virtualtext = {
      auto_trigger_ft = {},
      keymap = {
        accept = "<A-A>",
        accept_line = "<A-a>",
        next = "<A-]>",
        prev = "<A-[>",
      },
    },
  },
}