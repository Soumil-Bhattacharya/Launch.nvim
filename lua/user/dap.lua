local M = {
  "mfussenegger/nvim-dap",
  commit = "6b12294a57001d994022df8acbe2ef7327d30587",
  event = "VeryLazy",
}

function M.config()
  local dap = require "dap"

  local dap_ui_status_ok, dapui = pcall(require, "dapui")
  if not dap_ui_status_ok then
    return
  end

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end

  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      -- provide the absolute path for `codelldb` command if not using the one installed using `mason.nvim`
      command = "codelldb",
      args = { "--port", "${port}" },
      -- On windows you may have to uncomment this:
      -- detached = false,
    },
  }

  dap.adapters.coreclr = {
    type = "executable",
    command = "netcoredbg",
    args = { "--interpreter=vscode" },
  }
  dap.configurations.cs = {
    {
      type = "coreclr",
      name = "launch - netcoredbg",
      request = "launch",
      program = function()
        return vim.fn.input(
          "Path to dll",
          vim.fn.getcwd() .. "/bin/Debug/",
          "file"
        )
      end,
    },
  }
  dap.configurations.c = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        local path
        vim.ui.input({
          prompt = "Path to executable: ",
          default = vim.loop.cwd() .. "/build/",
        }, function(input)
          path = input
        end)
        vim.cmd [[redraw]]
        return path
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
end

-- M = {
--   "ravenxrz/DAPInstall.nvim",
--   commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de",
--   config = function()
--     require("dap_install").setup {}
--     require("dap_install").config("python", {
--       adapters = {
--         type = "executable",
--         command = "python3.9",
--         args = { "-m", "debugpy.adapter" },
--       },
--       configurations = {
--         {
--           type = "python",
--           request = "launch",
--           name = "Launch file",
--           program = "${file}",
--           pythonPath = function()
--             local cwd = vim.fn.getcwd()
--             if vim.fn.executable(cwd .. "/usr/bin/python3.9") == 1 then
--               return cwd .. "/usr/bin/python3.9"
--             elseif vim.fn.executable(cwd .. "/usr/bin/python3.9") == 1 then
--               return cwd .. "/usr/bin/python3.9"
--             else
--               return "/usr/bin/python3.9"
--             end
--           end,
--         },
--       },
--     })
--   end,
-- }

return M
