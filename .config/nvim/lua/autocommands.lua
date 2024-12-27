-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Go Commands
local go_boilerplate = vim.api.nvim_create_augroup('go-boilerplate', { clear = true })

-- -- Logging
vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Insert fmt.Println() at cursor',
  group = go_boilerplate,
  pattern = '*.go', -- Trigger only for `.go` files
  callback = function()
    vim.api.nvim_create_user_command('GoInsertPrintln', function()
      -- Get the current cursor position
      local cursor_pos = vim.api.nvim_win_get_cursor(0)
      local row = cursor_pos[1] - 1 -- Convert 1-based row to 0-based
      local col = cursor_pos[2] -- Column is already 0-based

      -- Text to insert
      local text = { 'fmt.Println()' }

      -- Insert the text at the current cursor position
      vim.api.nvim_buf_set_text(0, row, col, row, col, text)

      -- Move the cursor to the `(` character
      vim.api.nvim_win_set_cursor(0, { row + 1, col + 12 })

      -- Enter insert mode
      vim.cmd 'startinsert'
    end, {})
  end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Insert fmt.Printf() at cursor',
  group = go_boilerplate,
  pattern = '*.go', -- Trigger only for `.go` files
  callback = function()
    vim.api.nvim_create_user_command('GoInsertPrintf', function()
      -- Get the current cursor position
      local cursor_pos = vim.api.nvim_win_get_cursor(0)
      local row = cursor_pos[1] - 1 -- Convert 1-based row to 0-based
      local col = cursor_pos[2] -- Column is already 0-based

      -- Text to insert
      local text = { 'fmt.Printf()' }

      -- Insert the text at the current cursor position
      vim.api.nvim_buf_set_text(0, row, col, row, col, text)

      -- Move the cursor to the `(` character
      vim.api.nvim_win_set_cursor(0, { row + 1, col + 11 })

      -- Enter insert mode
      vim.cmd 'startinsert'
    end, {})
  end,
})

-- -- Error
vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Insert if err != nil boilerplate',
  group = go_boilerplate,
  pattern = '*.go',
  callback = function()
    vim.api.nvim_create_user_command('GoInsertIfErrNotNil', function()
      local cursor_pos = vim.api.nvim_win_get_cursor(0)
      local row = cursor_pos[1] - 1
      local col = cursor_pos[2]

      local text = { 'if err != nil {}' }

      vim.api.nvim_buf_set_text(0, row, col, row, col, text)
      vim.api.nvim_win_set_cursor(0, { row + 1, col + 15 })
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<CR>', true, false, true), 'i', false)
      vim.cmd 'startinsert'
    end, {})
  end,
})
