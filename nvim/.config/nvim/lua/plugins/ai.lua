return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-a>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-'>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
  {
    "sudo-tee/opencode.nvim",
    config = function()
      require("opencode").setup({
        keymap = {
          editor = {
            ["<leader>o<leader>"] = { "toggle" }, -- Open opencode. Close if opened
            -- ['<leader>oi'] = { 'open_input' }, -- Opens and focuses on input window on insert mode
            -- ['<leader>oI'] = { 'open_input_new_session' }, -- Opens and focuses on input window on insert mode. Creates a new session
            ["<leader>oc"] = { "open_output" }, -- Opens and focuses on output window
            -- ['<leader>ot'] = { 'toggle_focus' }, -- Toggle focus between opencode and last window
            -- ['<leader>oT'] = { 'timeline' }, -- Display timeline picker to navigate/undo/redo/fork messages
            -- ['<leader>oq'] = { 'close' }, -- Close UI windows
            -- ['<leader>os'] = { 'select_session' }, -- Select and load a opencode session
            -- ['<leader>oR'] = { 'rename_session' }, -- Rename current session
            -- ['<leader>op'] = { 'configure_provider' }, -- Quick provider and model switch from predefined list
            -- ['<leader>oV'] = { 'configure_variant' }, -- Switch model variant for the current model
            -- ['<leader>oy'] = { 'add_visual_selection', mode = {'v'} },
            -- ['<leader>oY'] = { 'add_visual_selection_inline', mode = {'v'} }, -- Insert visual selection as inline code block in the input buffer
            -- ['<leader>oz'] = { 'toggle_zoom' }, -- Zoom in/out on the Opencode windows
            -- ['<leader>ov'] = { 'paste_image'}, -- Paste image from clipboard into current session
            -- ['<leader>od'] = { 'diff_open' }, -- Opens a diff tab of a modified file since the last opencode prompt
            -- ['<leader>o]'] = { 'diff_next' }, -- Navigate to next file diff
            -- ['<leader>o['] = { 'diff_prev' }, -- Navigate to previous file diff
            -- ['<leader>oc'] = { 'diff_close' }, -- Close diff view tab and return to normal editing
            -- ['<leader>ora'] = { 'diff_revert_all_last_prompt' }, -- Revert all file changes since the last opencode prompt
            -- ['<leader>ort'] = { 'diff_revert_this_last_prompt' }, -- Revert current file changes since the last opencode prompt
            -- ['<leader>orA'] = { 'diff_revert_all' }, -- Revert all file changes since the last opencode session
            -- ['<leader>orT'] = { 'diff_revert_this' }, -- Revert current file changes since the last opencode session
            -- ['<leader>orr'] = { 'diff_restore_snapshot_file' }, -- Restore a file to a restore point
            -- ['<leader>orR'] = { 'diff_restore_snapshot_all' }, -- Restore all files to a restore point
            -- ['<leader>ox'] = { 'swap_position' }, -- Swap Opencode pane left/right
            -- ['<leader>ott'] = { 'toggle_tool_output' }, -- Toggle tools output (diffs, cmd output, etc.)
            -- ['<leader>otr'] = { 'toggle_reasoning_output' }, -- Toggle reasoning output (thinking steps)
            ["<leader>oo"] = { "quick_chat", mode = { "n", "x" } }, -- Open quick chat input with selection context in visual mode or current line context in normal mode
          },
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
          file_types = { "markdown", "opencode_output" },
        },
        ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
      },
      -- Optional, for file mentions and commands completion, pick only one
      "saghen/blink.cmp",
      -- 'hrsh7th/nvim-cmp',

      -- Optional, for file mentions picker, pick only one
      -- "folke/snacks.nvim",
      -- 'nvim-telescope/telescope.nvim',
      "ibhagwan/fzf-lua",
      -- 'nvim_mini/mini.nvim',
    },
  },
  -- {
  --   "nickjvandyke/opencode.nvim",
  --   version = "*", -- Latest stable release
  --   dependencies = {
  --     {
  --       -- `snacks.nvim` integration is recommended, but optional
  --       ---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
  --       "folke/snacks.nvim",
  --       optional = true,
  --       opts = {
  --         input = {}, -- Enhances `ask()`
  --         picker = { -- Enhances `select()`
  --           actions = {
  --             opencode_send = function(...)
  --               return require("opencode").snacks_picker_send(...)
  --             end,
  --           },
  --           win = {
  --             input = {
  --               keys = {
  --                 ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  --   config = function()
  --     ---@type opencode.Opts
  --     vim.g.opencode_opts = {
  --       -- Your configuration, if any; goto definition on the type or field for details
  --     }
  --
  --     vim.o.autoread = true -- Required for `opts.events.reload`
  --
  --     -- Recommended/example keymaps
  --     vim.keymap.set({ "n", "x" }, "<leader>a", function()
  --       require("opencode").ask("@this: ", { submit = true })
  --     end, { desc = "Ask opencode…" })
  --     vim.keymap.set({ "n", "x" }, "<leader>ax", function()
  --       require("opencode").select()
  --     end, { desc = "Execute opencode action…" })
  --     vim.keymap.set({ "n", "t" }, "<C-.>", function()
  --       require("opencode").toggle()
  --     end, { desc = "Toggle opencode" })
  --
  --     vim.keymap.set({ "n", "x" }, "go", function()
  --       return require("opencode").operator("@this ")
  --     end, { desc = "Add range to opencode", expr = true })
  --     vim.keymap.set("n", "goo", function()
  --       return require("opencode").operator("@this ") .. "_"
  --     end, { desc = "Add line to opencode", expr = true })
  --
  --     vim.keymap.set("n", "<S-C-u>", function()
  --       require("opencode").command("session.half.page.up")
  --     end, { desc = "Scroll opencode up" })
  --     vim.keymap.set("n", "<S-C-d>", function()
  --       require("opencode").command("session.half.page.down")
  --     end, { desc = "Scroll opencode down" })
  --
  --     -- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above — otherwise consider `<leader>o…` (and remove terminal mode from the `toggle` keymap)
  --     vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
  --     vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
  --   end,
  -- },
  -- {
  --   "ThePrimeagen/99",
  --   dependencies = {
  --     "saghen/blink.compat",
  --   },
  --   config = function()
  --     local _99 = require("99")
  --
  --     -- For logging that is to a file if you wish to trace through requests
  --     -- for reporting bugs, i would not rely on this, but instead the provided
  --     -- logging mechanisms within 99.  This is for more debugging purposes
  --     local cwd = vim.uv.cwd()
  --     local basename = vim.fs.basename(cwd)
  --     _99.setup({
  --       model = "opencode-go/minimax-m2.7", -- provider = _99.OpenCodeProvider, -- default: OpenCodeProvider
  --       -- logger = {
  --       --   level = _99.DEBUG,
  --       --   path = "./tmp/" .. basename .. ".99.debug",
  --       --   print_on_error = true,
  --       -- },
  --       tmp_dir = "./tmp",
  --
  --       --- Completions: #rules and @files in the prompt buffer
  --       completion = {
  --         -- I am going to disable these until i understand the
  --         -- problem better.  Inside of cursor rules there is also
  --         -- application rules, which means i need to apply these
  --         -- differently
  --         -- cursor_rules = "<custom path to cursor rules>"
  --
  --         --- A list of folders where you have your own SKILL.md
  --         --- Expected format:
  --         --- /path/to/dir/<skill_name>/SKILL.md
  --         ---
  --         --- Example:
  --         --- Input Path:
  --         --- "scratch/custom_rules/"
  --         ---
  --         --- Output Rules:
  --         --- {path = "scratch/custom_rules/vim/SKILL.md", name = "vim"},
  --         --- ... the other rules in that dir ...
  --         ---
  --         custom_rules = {
  --           "scratch/custom_rules/",
  --         },
  --
  --         --- Configure @file completion (all fields optional, sensible defaults)
  --         files = {
  --           enabled = true,
  --           max_file_size = 102400, -- bytes, skip files larger than this
  --           max_files = 5000, -- cap on total discovered files
  --           exclude = { ".env", ".env.*", "node_modules", ".git" },
  --         },
  --
  --         --- What autocomplete do you use.  We currently only
  --         --- support cmp right now
  --         -- source = "cmp",
  --         source = "blink",
  --       },
  --
  --       --- WARNING: if you change cwd then this is likely broken
  --       --- ill likely fix this in a later change
  --       ---
  --       --- md_files is a list of files to look for and auto add based on the location
  --       --- of the originating request.  That means if you are at /foo/bar/baz.lua
  --       --- the system will automagically look for:
  --       --- /foo/bar/AGENT.md
  --       --- /foo/AGENT.md
  --       --- assuming that /foo is project root (based on cwd)
  --       md_files = {
  --         "AGENT.md",
  --       },
  --     })
  --
  --     -- take extra note that i have visual selection only in v mode
  --     -- technically whatever your last visual selection is, will be used
  --     -- so i have this set to visual mode so i dont screw up and use an
  --     -- old visual selection
  --     --
  --     -- likely ill add a mode check and assert on required visual mode
  --     -- so just prepare for it now
  --
  --     vim.keymap.set("v", "<leader>aa", function()
  --       _99.visual()
  --     end)
  --     --- if you have a request you dont want to make any changes, just cancel it
  --     vim.keymap.set("v", "<leader>as", function()
  --       _99.stop_all_requests()
  --     end)
  --
  --     vim.keymap.set("n", "<leader>aS", function()
  --       _99.search()
  --     end)
  --
  --     vim.keymap.set("n", "<leader>9m", function()
  --       require("99.extensions.fzf_lua").select_model()
  --     end)
  --
  --     vim.keymap.set("n", "<leader>9p", function()
  --       require("99.extensions.fzf_lua").select_provider()
  --     end)
  --   end,
  -- },
}
