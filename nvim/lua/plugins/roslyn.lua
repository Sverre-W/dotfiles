return {
  "seblj/roslyn.nvim",
  ft = "cs",
  opts = {
    exe = {
      "dotnet",
      vim.fs.joinpath("/home/sverre/.local/share/lunarvim", "roslyn", "Microsoft.CodeAnalysis.LanguageServer.dll"),
    },
    -- your configuration comes here; leave empty for default settings
  },
}
