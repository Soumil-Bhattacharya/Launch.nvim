local M = {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip", -- if you wish to lazy-load
}

function M.config()
    require('telescope').load_extension('luasnip')
end

return M
