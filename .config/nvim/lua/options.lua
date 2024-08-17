vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 300

-- https://github.com/neovim/neovim/issues/11804
-- opt.clipboard = "unnamedplus"

vim.opt.completeopt = {"menuone", "noselect"}
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true

vim.opt.mouse = ""
vim.opt.mousemodel = "extend"

vim.opt.pumheight = 10
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.showtabline = 1

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true

vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.showcmd = false
vim.opt.ruler = false
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = "number"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"
vim.opt.fillchars.eob = "▫"
vim.opt.shortmess:append "c"
vim.opt.whichwrap:append "<,>,[,],h,l"
vim.opt.iskeyword:append "-"
vim.opt.formatoptions:remove{"c", "r", "o"}
vim.opt.linebreak = true

vim.diagnostic.config({ virtual_text = true })
