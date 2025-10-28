-- Nonvolatile options
require('options')
require('utils')
require('lsp')
-- require('line')
require('cfg.pkmgr')
-- require("cfg.lsp_cfg")
-- require('cfg.treesitter_cfg')
-- require('cfg.coc_cfg')
require('cfg.lualine_cfg')


-- Colors
vim.opt.bg = 'dark'
vim.cmd.colorscheme('sonokai')
vim.cmd 'highlight MatchParen term=underline gui=underline cterm=underline'
vim.cmd 'highlight Normal ctermbg=NONE guibg=NONE'

-- Terminal
vim.cmd 'autocmd TermOpen * setlocal nonumber norelativenumber'
vim.cmd 'autocmd TermOpen * tnoremap <buffer> <Esc> <C-\\><C-n>'
vim.cmd 'autocmd TermOpen * :startinsert'

-- Quickfix
vim.cmd 'autocmd Filetype qf setlocal nonumber norelativenumber'
vim.cmd 'autocmd Filetype qf nnoremap <buffer><silent> <Esc> :quit<CR>'

-- Disable providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Commands
-- @command :Term
vim.api.nvim_create_user_command('Term', ':tab term', {})
vim.keymap.set('n', '<leader>t', ':Term<CR>', { silent = true })
