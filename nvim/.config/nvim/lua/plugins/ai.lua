return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-a>",
          clear_suggestion = "<C-q>",
        },
      })
    end,
  },
  {
    "myzenon/novibe.nvim",
    -- dir = "~/Projects/Zenon/novibe.nvim",
    cmd = {
      "NovibeAct",
      "NovibeAct2",
      "NovibeProfile",
      "NovibeDistill",
      "NovibePromote",
      "NovibeReset",
      "NovibeStatus",
      "NovibeKB",
      "NovibeConsult",
      "NovibeConsultPrompt",
      "NovibeAgent",
      "NovibeAgentPrompt",
    },
    keys = {
      {
        "<leader>aa",
        ":NovibeAct2<CR>",
        mode = "v",
        desc = "novibe: fill implementation",
      },
      {
        "<leader>aa",
        ":NovibeAct2<CR>",
        mode = "n",
        desc = "novibe: fill implementation",
      },
      {
        "<leader>ac",
        ":NovibeConsult<CR>",
        mode = "n",
        desc = "novibe: consult",
      },
      {
        "<leader>ac",
        ":NovibeConsult<CR>",
        mode = "v",
        desc = "novibe: consult",
      },
      {
        "<leader>ag",
        ":NovibeGen<CR>",
        mode = "n",
        desc = "novibe: gen",
      },
      {
        "<leader>ag",
        ":NovibeGen<CR>",
        mode = "v",
        desc = "novibe: gen",
      },
    },
    config = function()
      require("novibe").setup({
        profiles = {
          { label = "CC Fast", provider = "claude", model = "claude-haiku-4-5", effort = "low" },
          { label = "CC Balanced", provider = "claude", model = "claude-sonnet-5", effort = "medium" },
          { label = "CC Best", provider = "claude", model = "claude-opus-4-8", effort = "max" },
          { label = "OC Mini Max 2.7", provider = "opencode", model = "opencode-go/minimax-m2.7", effort = "medium" },
          { label = "OC Kimi K2.6", provider = "opencode", model = "opencode-go/kimi-k2.6", effort = "medium" },
          {
            label = "OC DeepSeek V4 Pro",
            provider = "opencode",
            model = "opencode-go/deepseek-v4-pro",
            effort = "high",
          },
          {
            label = "Codex GPT 5.5",
            provider = "codex",
            model = "gpt-5.5",
            effort = "medium",
          },
        },
      })
    end,
  },
  {
    "Cannon07/code-preview.nvim",
    config = function()
      require("code-preview").setup()
    end,
  },
}
