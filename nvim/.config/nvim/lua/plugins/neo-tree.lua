return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- {
      --   "<leader>fe",
      --   function()
      --     require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      --   end,
      --   desc = "Explorer NeoTree (Root Dir)",
      -- },
      {
        "sf",
        function()
          require("neo-tree.command").execute({ toggle = false, reveal_force_cwd = true })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
    },
    opts = {
      -- sources = { "filesystem", "buffers", "git_status" },
      -- open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
      -- filesystem = {
      --   bind_to_cwd = false,
      --   follow_current_file = { enabled = true },
      --   use_libuv_file_watcher = true,
      -- },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- auto close
            -- vim.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close_all_nodes" })
          end,
        },
      },
      window = {
        position = "float",
        width = "fit_content",
        mappings = {
          --     ["l"] = "open",
          --     ["h"] = "close_node",
          --     ["<space>"] = "none",
          ["s"] = "",
          ["<leader>p"] = {
            function(state)
              local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.setreg("+", path, "c")
              print("Copy Path to Clipboard")
            end,
            desc = "Copy Path to Clipboard",
          },
          ["o"] = {
            function(state)
              require("lazy.util").open(state.tree:get_node().path, { system = true })
            end,
            desc = "Open with System Application",
          },
          --     ["P"] = { "toggle_preview", config = { use_float = false } },
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
      -- default_component_configs = {
      --   indent = {
      --     with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      --     expander_collapsed = "",
      --     expander_expanded = "",
      --     expander_highlight = "NeoTreeExpander",
      --   },
      --   git_status = {
      --     symbols = {
      --       unstaged = "󰄱",
      --       staged = "󰱒",
      --     },
      --   },
      -- },
    },
  },
}
