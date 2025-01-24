require("thetincan.remap")
require("thetincan.set")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.cmd[[highlight Normal guibg=none]]
vim.cmd[[highlight NonText guibg=none]]
vim.cmd[[highlight Normal ctermbg=none]]
vim.cmd[[highlight NonText ctermbg=none]]
