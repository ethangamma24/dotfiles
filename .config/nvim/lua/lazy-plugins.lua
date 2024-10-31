--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins, you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup {
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Kickstart plugins
  require 'kickstart/plugins/gitsigns',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/gruvbox',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart.plugins.debug',

  require 'kickstart.plugins.indent_line',

  -- Other plugins
  require 'custom.plugins.harpoon',

  require 'custom.plugins.neogit',

  -- require 'custom.plugins.undotree',

  require 'custom.plugins.delimitmate',

  require 'custom.plugins.vim-airline',

  require 'custom.plugins.vim-airline-themes',

  require 'custom.plugins.tmuxline',

  require 'custom.plugins.vim-tmux-navigator',

  require 'custom.plugins.auto-pairs',

  require 'custom.plugins.vim-terraform',

  require 'custom.plugins.nvim-neotest',

  require 'custom.plugins.vim-be-good',

  require 'custom.plugins.oil-nvim',

  require 'custom.plugins.hardtime',

  require 'custom.plugins.precognition',

  -- require 'custom.plugins.codeium',

  require 'custom.plugins.trouble',

  require 'custom.plugins.surround',

  require 'custom.plugins.cheatsheet',

  -- Reaper plugin
  -- require 'custom.plugins.reaper',

  require 'custom.plugins.jq',

  require 'custom.plugins.cheatsheet',

  require 'custom.plugins.obsidian',

  require 'custom.plugins.fterm',

  require 'custom.plugins.treesitter-context',

  require 'custom.plugins.renamer',

  require 'custom.plugins.leetcode',

  -- Games
  -- require 'custom.plugins.tetris',

  require 'custom.plugins.nvimesweeper',

  require 'custom.plugins.killersheep',

  require 'custom.plugins.playtime',

  require 'custom.plugins.cellular-automaton',

  require 'custom.plugins.blackjack',

  require 'custom.plugins.sudoku',

  -- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- put them in the right spots if you want.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for kickstart
  --
  --  Here are some example plugins that I've included in the kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}
