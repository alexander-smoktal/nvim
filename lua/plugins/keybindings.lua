return {
  { -- further customize the options set by the community
    "p00f/clangd_extensions.nvim",
    dependencies = {
      "AstroNvim/astrocore",
      opts = {
        autocmds = {
          clangd_custom_mappings = {
            {
              event = "LspAttach",
              desc = "Load custom keybindings with clangd",
              callback = function(args)
                if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
                  require("astrocore").set_mappings({
                    n = {
                      ["A-Left"] = { "C-o" },
                      ["A-Right"] = { "C-i" },
                    },
                  }, { buffer = args.buf })
                end
              end,
            },
          },
        },
      },
    },
  },
}
