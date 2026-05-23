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

-- Git / Gitsigns
map("n", "]c", function()
  if vim.wo.diff then
    vim.cmd.normal { "]c", bang = true }
  else
    require("gitsigns").nav_hunk "next"
  end
end, { desc = "Next Git hunk" })

map("n", "[c", function()
  if vim.wo.diff then
    vim.cmd.normal { "[c", bang = true }
  else
    require("gitsigns").nav_hunk "prev"
  end
end, { desc = "Previous Git hunk" })

map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Git stage hunk" })
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Git reset hunk" })
map("v", "<leader>gs", ":Gitsigns stage_hunk<CR>", { desc = "Git stage selected hunk" })
map("v", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Git reset selected hunk" })

map("n", "<leader>gS", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Git stage buffer" })
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", { desc = "Git reset buffer" })

map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
map("n", "<leader>gi", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Git preview hunk inline" })

map("n", "<leader>gb", "<cmd>Gitsigns blame_line full=true<CR>", { desc = "Git blame line" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Git diff this" })
map("n", "<leader>gD", function()
  require("gitsigns").diffthis "~"
end, { desc = "Git diff against previous" })

map("n", "<leader>gq", "<cmd>Gitsigns setqflist<CR>", { desc = "Git hunks to quickfix" })
map("n", "<leader>gQ", function()
  require("gitsigns").setqflist "all"
end, { desc = "Git all hunks to quickfix" })

map("n", "<leader>gtb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Git line blame" })
map("n", "<leader>gtw", "<cmd>Gitsigns toggle_word_diff<CR>", { desc = "Toggle Git word diff" })

map({ "o", "x" }, "ih", "<cmd>Gitsigns select_hunk<CR>", { desc = "Git select hunk" })

-- Lazygit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })
