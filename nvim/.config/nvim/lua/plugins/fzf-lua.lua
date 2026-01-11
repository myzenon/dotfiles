return {
  "ibhagwan/fzf-lua",
  opts = {
    keymap = {
      builtin = {
        ["<M-q>"] = "hide",
      },
    },
    winopts = {
      preview = {
        layout = "vertical",
      },
    },
  },
  keys = {
    -- { "<c-j>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
    -- { "<c-k>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
    -- {
    --   "<leader>,",
    --   "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
    --   desc = "Switch Buffer",
    -- },
    -- { "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    -- { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
    -- { "<leader><space>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    -- find
    { ";b", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    -- { ";f", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { ";f", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    -- git
    { ";g", "<cmd>FzfLua git_status<CR>", desc = "Status" },
    -- search
    -- { '<leader>s"', "<cmd>FzfLua registers<cr>", desc = "Registers" },
    { ";e", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
    { ";E", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
    -- { ";r", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { ";r", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    -- { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
    -- { "<leader>sH", "<cmd>FzfLua highlights<cr>", desc = "Search Highlight Groups" },
    -- { "<leader>sj", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
    -- { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
    -- { "<leader>sl", "<cmd>FzfLua loclist<cr>", desc = "Location List" },
    -- { "<leader>sM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
    -- { "<leader>sm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
    { ";;", "<cmd>FzfLua resume<cr>", desc = "Resume" },
    -- { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix List" },
    -- { "<leader>sw", LazyVim.pick("grep_cword"), desc = "Word (Root Dir)" },
    -- { "<leader>sW", LazyVim.pick("grep_cword", { root = false }), desc = "Word (cwd)" },
    -- { "<leader>sw", LazyVim.pick("grep_visual"), mode = "v", desc = "Selection (Root Dir)" },
    -- { "<leader>sW", LazyVim.pick("grep_visual", { root = false }), mode = "v", desc = "Selection (cwd)" },
    -- { "<leader>uC", LazyVim.pick("colorschemes"), desc = "Colorscheme with Preview" },
    -- {
    --   "<leader>ss",
    --   function()
    --     require("fzf-lua").lsp_document_symbols({
    --       regex_filter = symbols_filter,
    --     })
    --   end,
    --   desc = "Goto Symbol",
    -- },
    -- {
    --   "<leader>sS",
    --   function()
    --     require("fzf-lua").lsp_live_workspace_symbols({
    --       regex_filter = symbols_filter,
    --     })
    --   end,
    --   desc = "Goto Symbol (Workspace)",
    -- },
  },
}
