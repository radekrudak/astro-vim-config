return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
    {
      "f3fora/cmp-spell",
      dependencies =  {"nvim-cmp"},
      config = function()
          require('cmp').setup({
              sources = {
                  {
                      name = 'spell',
                      option = {
                          keep_all_entries = false,
                          enable_in_context = function()
                              return true
                          end,
                      },
                  },
              },
          })
      end,
      event = "User AstroFile",
    },
}
