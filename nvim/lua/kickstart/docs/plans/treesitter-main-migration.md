---
plan name: treesitter-main-migration
plan description: Migrate treesitter to main branch
plan status: active
---

## Idea
Migrate nvim-treesitter plugin from the master branch (legacy configs API) to the main branch (complete rewrite). The main branch is a full incompatible rewrite that requires Neovim 0.12+, removes the nvim-treesitter.configs module, and changes how parsers are installed and features are enabled. Current config uses ensure_installed, auto_install, highlight, and indent options which must be reimplemented using the new API.

## Implementation
- Backup current treesitter.lua config before making changes
- Update plugin spec in treesitter.lua: change branch from 'master' to 'main', remove 'main = nvim-treesitter.configs' line, and remove the old opts table
- Implement new config function: call require('nvim-treesitter').install() with the user's language list (bash, c, go, html, lua, markdown, vim, vimdoc) to replace ensure_installed
- Add FileType autocommand to enable highlighting via vim.treesitter.start() for supported filetypes
- Add FileType autocommand to enable indentation via vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
- Address auto_install migration: either remove it (manual install going forward) or implement a BufReadPre autocommand that calls install() for the current filetype
- Clean up lazy.nvim cache and old plugin state to avoid conflicts between master and main branch artifacts
- Verify migration by checking for lua syntax errors and ensuring dependent plugins (nvim-treesitter-context, etc.) still load correctly

## Required Specs
<!-- SPECS_START -->
<!-- SPECS_END -->