-- Portapapeles
vim.cmd("set clipboard=unnamedplus")

-- Configs generales
vim.cmd("set background=dark")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
-- vim.g.leader = " "
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.encoding = "utf-8" 
vim.opt.fileencoding = "utf-8"  
vim.opt.smartindent = true 
vim.opt.autoindent = true 
-- vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.wrap = true

-- Autocompletado de corchetes
vim.cmd("inoremap ( ()<Left>")
-- vim.cmd("inoremap < <><Left>")
vim.cmd("inoremap { {}<Left>")
vim.cmd("inoremap {<CR> {<CR><CR>}<Esc>ki<tab><Esc>i")
vim.cmd("inoremap [ []<Left>")
vim.cmd("inoremap ' ''<Left>")
vim.cmd("inoremap \" \"\"<Left>")

-- status bar bottom
if vim.fn.has("nvim-0.8") == 1 then
    vim.opt.cmdheight = 0
end



