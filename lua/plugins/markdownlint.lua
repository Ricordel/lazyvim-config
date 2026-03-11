-- Disable markdown linting since I don't manage to disable only some of the
-- warnings that are horribly annoying, like line width or blank likes
return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- This removes the markdownlint association from the filetype mapping
      if opts.linters_by_ft then
        opts.linters_by_ft.markdown = nil
      end
      return opts
    end,
  },
}
