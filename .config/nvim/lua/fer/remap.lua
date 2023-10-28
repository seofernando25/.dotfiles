vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local tele = require('telescope.builtin')

vim.keymap.set('n', "<leader><F1>", tele.help_tags, {})
vim.keymap.set('n', "<leader><C-R>", tele.find_files, {})
vim.keymap.set('n', "<leader><C-S-f>", tele.live_grep, {})

