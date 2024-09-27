return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        ["<C-e>"] = { "<End>", desc = "Line end" },
        ["<C-a>"] = { "^", desc = "Line begin" },
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
      },
      v = {
        ["<C-e>"] = { "<End>", desc = "Line end" },
        ["<C-a>"] = { "^", desc = "Line begin" },
      },
      i = {
        ["<C-e>"] = { "<End>", desc = "Line end" },
        ["<C-a>"] = { "<C-o>^", desc = "Line begin" },
        ["<C-s>"] = { "<C-o>:w!<cr>i", desc = "Save File" },
      },
    },
  },
}
