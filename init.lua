local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Tab>", ">gv", { noremap = true, silent = true })
   
vim.api.nvim_set_keymap("n", "<Leader>k",  ":wincmd k<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>l",  ":wincmd l<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>j",  ":wincmd j<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h",  ":wincmd h<CR>", { noremap = true, silent = true })

vim.opt.wrap = false
vim.opt.nu = true
vim.opt.relativenumber = true

require("lazy").setup({
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{ "ThePrimeagen/vim-be-good"},
	{ "mhinz/vim-startify" },
	{ "kyazdani42/nvim-tree.lua" },
	{ "vuciv/vim-bujo" }
})


vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

require("plugins")
