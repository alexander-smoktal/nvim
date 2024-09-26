return {
  name = "Ninja build",
  builder = function()
    -- Full path to current file (see :help expand())
    local workdir = vim.fn.getcwd()
    return {
      cmd = { "ninja" },
      args = { "-C", workdir .. "/build" },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
  condition = {
    filetype = { "cpp", "cmake" },
  },
}
