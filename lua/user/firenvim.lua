local M = {
  "glacambre/firenvim",

  -- Lazy load firenvim
  -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
  lazy = not vim.g.started_by_firenvim,
  build = function()
    vim.fn["firenvim#install"](0)
  end,
  config = function()
    vim.g.firenvim_config = {
      -- globalSettings = { alt = "all" },
      localSettings = {
        ["https://www.google.com_*.txt"] = {
          takeover = "never",
        },
        [".*"] = {
          selector = "textarea",
        },
      },
    }

    vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
      callback = function(e)
        if vim.g.timer_started == true then
          return
        end
        vim.g.timer_started = true
        vim.fn.timer_start(10000, function()
          vim.g.timer_started = false
          vim.cmd "silent write"
        end)
      end,
    })
  end,
}

return M
