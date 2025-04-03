return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  { "christoomey/vim-system-copy", lazy = false },
  {
    "prurigro/ReplaceWithRegister",
    branch = "1.42-update",
    lazy = false,
    keys = {
      { "pr", "<Plug>ReplaceWithRegisterOperator", desc = "ReplaceWithRegisterOperator" },
      { "prr", "<Plug>ReplaceWithRegisterLine", desc = "ReplaceWithRegisterLine" },
      { "pr", "<Plug>ReplaceWithRegisterVisual", mode = { "x" }, desc = "ReplaceWithRegisterVisual" },
    },
  },
  -- { "inkarkat/vim-ReplaceWithRegister", lazy = false },
  -- { "matze/vim-move", lazy = true },
  {
    "willothy/moveline.nvim",
    build = "make",
    config = function()
      local moveline = require("moveline")
      vim.keymap.set("n", "<M-K>", moveline.up)
      vim.keymap.set("n", "<M-J>", moveline.down)
      vim.keymap.set("v", "<M-K>", moveline.block_up)
      vim.keymap.set("v", "<M-J>", moveline.block_down)
    end,
  },
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  --   config = function()
  --     vim.g.VM_maps = {
  --       ["Add Cursor Down"] = "<Tab>j", -- new cursor down
  --       ["Add Cursor Up"] = "<Tab>k", -- new cursor up
  --     }
  --   end,
  -- },
  {
    "easymotion/vim-easymotion",
    lazy = true,
    keys = {
      { ",", "<Plug>(easymotion-sn)", desc = "Find text" },
      { "n", "<Plug>(easymotion-next)", desc = "Find next text" },
      { "N", "<Plug>(easymotion-prev)", desc = "Find previous text" },
    },
  },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "<leader>e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
      },
      {
        "<leader>w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
      },
    },
  },
  -- Next target
  {
    "wellle/targets.vim",
  },
  {
    "sustech-data/wildfire.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("wildfire").setup({
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          node_decremental = "<Tab>",
        },
      })
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
