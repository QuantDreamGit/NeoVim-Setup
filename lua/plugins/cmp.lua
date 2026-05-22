return {
  {
    "hrsh7th/nvim-cmp",

    opts = function(_, opts)
      local cmp = require "cmp"

      opts.sources = cmp.config.sources {
        {
          name = "copilot",
          group_index = 2,
        },
        {
          name = "nvim_lsp",
          group_index = 2,
        },
        {
          name = "luasnip",
          group_index = 2,
        },
        {
          name = "buffer",
          group_index = 2,
        },
        {
          name = "path",
          group_index = 2,
        },
      }

      opts.sorting = opts.sorting or {}
      opts.sorting.priority_weight = 2
      opts.sorting.comparators = {
        require("copilot_cmp.comparators").prioritize,

        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        cmp.config.compare.locality,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
      }

      return opts
    end,
  },
}
