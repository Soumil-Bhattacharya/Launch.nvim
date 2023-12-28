local M =  {
    -- Unix
    cmd = { vim.fn.expand "$MASON/packages/elixir-ls/language_server.sh" };
    -- Windows
    -- cmd = { "/path/to/elixir-ls/language_server.bat" };
}

print(vim.fn.expand("$MASON/packages/elixir-ls/language_server.sh"));
return M
