return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = { preselect = true, auto_insert = true },
      },
      menu = {
        draw = {
          columns = {
            { "kind_icon", "label", gap = 1, "label_detail", "label_description" },
          },
          components = {
            label = {
              width = { fill = true, max = 40 },
              highlight = "TSStrong",
            },
            label_detail = {
              width = { max = 30 },
              text = function(ctx)
                if ctx.item.data then
                  return ctx.item.data
                    and ctx.item.data.entryNames
                    and ctx.item.data.entryNames[1]
                    and ctx.item.data.entryNames[1].source
                end
                return ctx.item.detail
              end,
              highlight = "BlinkCmpLabelDescription",
            },
          },
        },
      },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
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
