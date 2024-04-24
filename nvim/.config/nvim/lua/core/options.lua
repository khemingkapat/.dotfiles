local o = vim.opt
local g = vim.g
o.relativenumber = true
o.number=true
o.splitbelow = true
o.splitright=true
o.syntax='ON'
o.shiftwidth=4
o.expandtab=true
o.autoindent=true
o.smartindent=true
o.mouse='a'
o.termguicolors=true
o.ignorecase=true
o.list = true
o.cursorline=true
o.hlsearch = false
-- o.cmdheight = 0
-- o.statusline = "%f - %y %=%S %l / %L"
-- o.showcmdloc="statusline"
vim.diagnostic.config({
    virtual_text = false
})
o.updatetime = 150
o.undofile=true

o.clipboard = "unnamedplus"

-- if vim.fn.has('wsl') == 1 then
--     vim.api.nvim_create_autocmd('TextYankPost', {
-- 	group = vim.api.nvim_create_augroup('Yank', { clear = true }),
-- 	callback = function()
-- 	    vim.fn.system('clip.exe', vim.fn.getreg('"'))
-- 	end,
-- 	})
-- end
