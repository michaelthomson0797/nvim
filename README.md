# My Neovim Config

<!--toc:start-->
- [My Neovim Config](#my-neovim-config)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Plugins used](#plugins-used)
  - [Basic Keybinds](#basic-keybinds)
    - [Project Navigation](#project-navigation)
    - [File Navigation](#file-navigation)
    - [LSP Commands](#lsp-commands)
<!--toc:end-->

An okay config

## Prerequisites
- `neovim`
- `git`
- `fzf`
- `ripgrep`

## Installation
Clone this folder, or copy all the contents to `~/.config/nvim/`

## Plugins used
- `lazy.nvim`: Package manager that manages installed plugins
- `lsp-zero`: Basic configurations for providing language server support like autocompletion, intellisense, diagnostics, etc.
- `alpha-nvim`: Splash screen when starting neovim
- `fidget.nvim`: LSP status indicator
- `gitsigns.nvim`: File change indicators in the buffer gutter
- `harpoon`: Project-specific file bookmarking and rapid navigation
- `leap.nvim`: Fast file navigation by jumping to characters in the buffer
- `lspsaga.nvim`: UI replacement for many LSP function (rename, documentation hover, etc.)
- `lualine.nvim`: Status with nice styling
- `mini.nvim`: A collection of utilities
    - `mini.comment`: Apply language sensitive comments
    - `mini.pairs`: automatically pair parens, quotes, etc.
    - `mini.surround`: Quickly add, edit, delete surroundings (parens, quotes, etc.)
    - `mini.splitjoin`: quickly split or join a list
    - `mini.jump`: enhanced f/F/t/T movement
- `neo-tree.nvim`: File tree explorer and editor
- `noice.nvim`: Fancy UI replacements
- `nvim-ts-autotag`: Automatic pairing of HTML tags in `.html`, `.jsx`, `.tsx`
- `telescope.nvim`: Fuzzy file and text finder
- `toggleterm.nvim`: Quickly toggle integrated terminal on and off
- `nvim-treesitter`: Syntax tree parsing
- `trouble.nvim`: Diagnostics listing
- `undotree`: Show file undo/redo history as a tree and traverse it

## Basic Keybinds
### Project Navigation
- `<leader>fe`: open file explorer
- `<leader>ff`: fuzzy find files in project
- `<leader>fg`: fuzzy find text in project
- `<leader>fg`: fuzzy find text in project

### File Navigation
- `s{c1}{c2}`: searches the active buffer for the two provided characters and provides prompts to press to instantly navigate to that pair

### LSP Commands
- `gd`: Go to definition
- `gr`: Go to references
- `<leader>rn`: Rename symbol
- `<leader>ca`: Code actions
- `<leader>ds`: Fuzzy find document symbols
- `<leader>ws`: Fuzzy find workspace symbols
- `[d`/`]d`: Jump to next/prev diagnostic
- `K`: Show symbol documentation
- `<leader>o`: show outline


