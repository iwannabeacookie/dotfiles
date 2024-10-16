-- This file contains all non-buffer and non-plugin specific options.

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default and relative
vim.wo.number = true
vim.o.relativenumber = true

-- Set tab options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Enables 24-bit RGB color in the TUI
vim.o.termguicolors = true

-- Makes statusline always appear in fullsize
vim.o.laststatus = 3

-- vim.o.cmdheight = 0

-- Turns off vim defailt autocomplete
vim.o.complete = ''
