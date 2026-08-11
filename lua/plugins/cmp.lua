return {
  "saghen/blink.cmp",
  dependencies = { "saghen/blink.lib" },
  opts = {
    appearance = {
      kind_icons = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "󰡱",

        Field = "󰜢",
        Variable = "󰀫",
        Property = "󰜢",

        Class = "󰠱",
        Interface = "",
        Module = "󰆧",

        Unit = "",
        Value = "󰎠",
        Enum = "",
        EnumMember = "",

        Keyword = "󰌋",
        Snippet = "",

        Color = "󰏘",
        File = "󰈙",
        Folder = "󰉋",

        Reference = "󰈇",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰊄",
      },
    },

    completion = {
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { "kind_icon", gap = 1 },
            { "label", gap = 1 },
            { "source_name" },
          },
        },
      },
      documentation = {
        auto_show = true,
        window = {
          border = "rounded",
        },
      },
      ghost_text = {
        enabled = true,
      },
    },

    sources = {
      default = { "lsp", "path", "buffer", "snippets" },
    },
  },
}
