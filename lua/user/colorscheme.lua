local M = {
  'olimorris/onedarkpro.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  commit = 'b8d7e08eed9a61eb2f49b9196b01f7f2932735ff',
}

function M.config()
  local Job = require('plenary.job')
  local light = 'onelight'
  local dark = 'onedark_vivid'
  local job= Job:new({
    command = 'gsettings',
    args= {'get', 'org.gnome.desktop.interface', 'color-scheme'},
  })
  if job:sync()[1] == "'prefer-dark'" then
    vim.cmd.colorscheme(dark)
  else
    vim.cmd.colorscheme(light)
  end
end

return M
