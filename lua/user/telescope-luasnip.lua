local M =  {
  "benfowler/telescope-luasnip.nvim",
  module = "telescope._extensions.luasnip",  -- if you wish to lazy-load
  config = function ()
    require("telescope").load_extension('luasnip')
  end
}


return M
