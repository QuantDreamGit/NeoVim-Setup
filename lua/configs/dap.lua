local dap = require("dap")

-- 1. Configure the CodeLLDB Adapter
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    -- Automatically uses Mason's installed codelldb binary path if available
    command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
    args = { "--port", "${port}" },
  },
}

-- 2. Configure configurations for C and C++
local c_cpp_config = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    -- Dynamically prompts you for the path to your compiled binary executable
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
  },
}

-- Apply the exact same setup to C, C++, and Rust
dap.configurations.cpp = c_cpp_config
dap.configurations.c = c_cpp_config
dap.configurations.rust = c_cpp_config
