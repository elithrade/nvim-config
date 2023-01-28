-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Quit quicker
vim.keymap.set('n', '<leader>q', ':q<cr>')

-- Split window
vim.keymap.set('n', 'sh', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
vim.keymap.set('', '<C-h>', '<C-w>h')
vim.keymap.set('', '<C-k>', '<C-w>k')
vim.keymap.set('', '<C-j>', '<C-w>j')
vim.keymap.set('', '<C-l>', '<C-w>l')

-- Delete word backwards
vim.keymap.set('n', 'dW', 'vb"_d')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
