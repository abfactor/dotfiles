-- Nonvolatile options
require('options')
require('utils')

-- Colors
vim.opt.bg = 'dark'
vim.cmd.colorscheme('slate')
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


-- builtin lsp
vim.lsp.enable({
    'clangd',
    'rust_analyzer',
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- require('cfg.pckr_cfg')
-- require("cfg.lsp_cfg")
-- require('cfg.treesitter_cfg')
-- require('cfg.coc_cfg')
-- require('cfg.lualine_cfg')

require('line')