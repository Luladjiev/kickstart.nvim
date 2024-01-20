-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<TAB>', ':bn<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-TAB>', ':bp<cr>', { desc = 'Previous Buffer' })

return {}
