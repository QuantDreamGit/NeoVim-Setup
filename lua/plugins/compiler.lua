return {
  -- Task runner required by compiler.nvim
  {
    "stevearc/overseer.nvim",
    commit = "6271cab",
    config = function()
      require("overseer").setup()
    end,
  },
  -- The compiler plugin itself
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
}
