require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Debugger
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Continue Debugging" })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step Over" })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step Into" })
map("n", "<leader>dr", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle DAP UI" })

-- Formatter
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format current code buffer" })

-- Copilot
map("n", "<leader>cp", "<cmd>Copilot panel<CR>", {
  desc = "Copilot Panel",
})

map("n", "<leader>ce", "<cmd>Copilot enable<CR>", {
  desc = "Enable Copilot",
})

map("n", "<leader>cd", "<cmd>Copilot disable<CR>", {
  desc = "Disable Copilot",
})

map("n", "<leader>cs", "<cmd>Copilot status<CR>", {
  desc = "Copilot Status",
})
