--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Commenting these out so I can use the command for oil.nvim
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- vim.keymap.set('n', '<leader>pv', ':Ex<CR>')

vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>')

-- Allows you to move highlighted lines in visual mode, automatically
-- indenting where needed.
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Not sure quite what this does? need to know what g$ is in this context
vim.keymap.set('n', 'Y', 'yg$')
-- Append following line to current line (basically delete \n)
vim.keymap.set('n', 'J', 'mzJ`z')
-- Following 4 keep cursor in middle of screen while line hopping
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Play VimWithMe :)
vim.keymap.set('n', '<leader>vwm', function()
  require('vim-with-me').StartVimWithMe()
end)
vim.keymap.set('n', '<leader>svwm', function()
  require('vim-with-me').StopVimWithMe()
end)

-- Allows you to paste copied text over highlighted text without losing
-- copied text from the clipboard
vim.keymap.set('x', '<leader>p', '"_dP')

-- Allows you to easily yank to system clipboard, keeping system & vim
-- clipboards separate
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Deleting to void register in both normal & visual mode
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Exit insert mode with ctrl c
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Ex mode gross, get it out of here
vim.keymap.set('n', 'Q', '<nop>')
-- Same for record, I never use it and just always get trapped in it
vim.keymap.set('n', 'q', '<nop>')
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end)

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod ?x %<CR>', { silent = true })

-- Terraform commands

vim.keymap.set('n', '<leader>ti', ':!terraform init<CR>', opts)
vim.keymap.set('n', '<leader>tv', ':!terraform validate<CR>', opts)
vim.keymap.set('n', '<leader>tp', ':!terraform plan<CR>', opts)
vim.keymap.set('n', '<leader>taa', ':!terraform apply -auto-approve<CR>', opts)

-- Open vsplit with <M-v>
vim.keymap.set('n', '<M-v>', ':vsplit<CR>')

-- Cheatsheet
vim.keymap.set('n', '<leader>?', ':Cheatsheet<CR>')

-- vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
-- end)
