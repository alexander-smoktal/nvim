---@type LazySpec
return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.comment").setup()
      require("mini.cursorword").setup()
      require("mini.jump").setup()
      require("mini.jump").setup()
      require("mini.move").setup()
      require("mini.operators").setup()
    end,
  },
}
