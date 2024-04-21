require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", {noremap=true})
map("n", "<leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})
map("n", "<leader>dc", ":DapToggleContinue<CR>", {noremap=true})
map("n", "<leader>dr", ":lua require('dapui').open({reset=true})", {noremap=true})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
