return {

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- This forces format-on-save automatically
    opts = {
      formatters_by_ft = {
        -- Tell conform to use clang-format for C, C++, and header files
        c = { "clang-format" },
        cpp = { "clang-format" },
        h = { "clang-format" },
        hpp = { "clang-format" },

        -- Lua files will be formatted with stylua
        lua = { "stylua" },
      },
      -- Optional: Automatically format files every time you save them
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
