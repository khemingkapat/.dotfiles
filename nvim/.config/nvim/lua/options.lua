local o = vim.opt
o.relativenumber = true
o.number = true
o.splitbelow = true
o.splitright = true

o.syntax = "ON"
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop=4

o.autoindent = true
o.smartindent = true

o.mouse = "a"
o.termguicolors = true
o.ignorecase = true
o.list = true
o.cursorline = true
o.hlsearch = false

vim.diagnostic.config({
	virtual_text = false,
})

o.updatetime = 150
o.undofile = true

o.clipboard = "unnamedplus"

