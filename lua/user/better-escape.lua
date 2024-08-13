local M = {
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup {
      timeout = vim.o.timeoutlen,
      mappings = {
      i = {
            j = {
                -- These can all also be functions
                k = "<Esc>"
            },
            k = {
                -- These can all also be functions
                j = "<Esc>"
            },
        },
    },
    }
  end,
}

return M
