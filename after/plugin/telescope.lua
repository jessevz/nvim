local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<S-P>', builtin.git_branches, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

vim.keymap.set('n', '<leader>pr', function ()
    builtin.lsp_document_symbols( {ignore_symbols='variable'});
    --builtin.lsp_document_symbols({ symbols='function' });
end)

vim.keymap.set('n', 'gr', builtin.lsp_references)
vim.keymap.set('n', '<leader>pm', builtin.man_pages)
