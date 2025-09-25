return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "default",
      ["<CR>"] = { "accept", "fallback" },
      ["<C><leader>"] = { "show" },
      ["<Tab>"] = {
        function(cmp)
          return cmp.select_next()
        end,
        "snippet_forward",
        "fallback",
      },
      ["<S-Tab>"] = {
        function(cmp)
          return cmp.select_prev()
        end,
        "snippet_backward",
        "fallback",
      },
    },
    appearance = {
      nerd_font_variant = "mono",
    },

    signature = {
      enabled = true,
    },

    completion = {
      documentation = {
        auto_show = true,
        treesitter_highlighting = true,
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = true,
        },
      },
    },
    sources = {
      accept = { auto_brackets = { enabled = true } },
      default = { "lsp", "path", "snippets", "buffer" },
      providers = {
        path = { score_offset = 3 },
        lsp = { score_offset = 0 },
        snippets = { score_offset = -1 },
        buffer = { score_offset = -3 },
      },
    },
  },
  opts_extend = { "sources.default" },
}
