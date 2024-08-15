require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>cr", "<cmd>CMakeRun<CR>", { desc = "Run CMake" })
map("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "Run CMake" })

local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

return M
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
