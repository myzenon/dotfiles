return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = "auto_insert",
      },
      trigger = {
        show_in_snippet = false,
      },
      menu = {
        draw = {
          columns = {
            { "kind_icon", "label", gap = 1, "label_detail", "label_description" },
          },
          components = {
            label = {
              width = { fill = true, max = 30 },
            },
            label_detail = {
              width = { max = 30 },
              text = function(ctx)
                return ctx.item.detail
              end,
              highlight = "BlinkCmpLabelDescription",
            },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "buffer" },
    },
    fuzzy = {
      sorts = { "kind", "label", "score" },
    },
    keymap = {
      preset = "enter",
      ["<CR>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "snippet_forward",
        "fallback",
      },
      ["<Tab>"] = {
        "select_next",
        "fallback",
      },
    },
  },
}
