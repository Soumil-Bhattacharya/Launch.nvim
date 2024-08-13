local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with {
        extra_filetypes = { "toml" },
        -- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      -- null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.completion.spell,
    },
  }

  null_ls.register {
    name = "Convert Inline links to reference links",
    method= null_ls.methods.CODE_ACTION,
    filetypes = {"md"},
    generator = {
      fn  = function (params)
        local links= {}
        for i, line in ipairs(params.content) do
          local match = line:gmatch("%[(.*)%]%((.*)%)")
          if match then
            for name, link in match do
              links:insert(name, link)
            end
          end
        end

        for name, link in pairs(links) do
          print("[",name, "]: ", link)
        end
      end
    }
  }

end



return M
