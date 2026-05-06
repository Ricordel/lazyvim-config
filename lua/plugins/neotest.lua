return {
  {
    "nvim-neotest/neotest",
    init = function()
      -- neotest-vstest uses "parameterized" as a position type for NUnit [TestCase]
      -- groups, but neotest only defines signs for its standard types; define it here
      -- so the status consumer doesn't crash when it tries to place the sign
      vim.fn.sign_define("neotest_parameterized", { text = "P", texthl = "NeotestTest" })
    end,
    opts = {
      status = {
        -- neotest-vstest uses a non-standard "parameterized" position type for
        -- NUnit [TestCase] groups; neotest's virtual_text renderer has no nil
        -- guard for unknown types and crashes. Disable until fixed upstream.
        virtual_text = false,
      },
      adapters = {
        ["rustaceanvim.neotest"] = false,
        ["neotest-vstest"] = {
          broad_recursive_discovery = false,
          solution_selector = function(_)
            -- Use the explicitly opened .slnf if available, otherwise nil
            -- which makes neotest-vstest fall back to the nearest .csproj
            return vim.g._roslyn_slnf or nil
          end,
        },
      },
    },
  },
}
