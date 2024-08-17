require('options')

vim.cmd 'autocmd TermOpen * setlocal nonumber norelativenumbe'
vim.cmd 'autocmd TermOpen * tnoremap <buffer> <Esc> <C-\\><C-n>'

-- quick
vim.cmd 'autocmd Filetype qf setlocal nonumber norelativenumber'
vim.cmd 'autocmd Filetype qf nnoremap <buffer><silent> <Esc> :quit<CR>'

vim.cmd [[
    xnoremap = <Cmd>call VSCodeCall('editor.action.formatSelection')<CR>
    nnoremap = <Cmd>call VSCodeCall('editor.action.formatSelection')<CR><Esc>
    nnoremap == <Cmd>call VSCodeCall('editor.action.formatSelection')<CR>
    nnoremap <C-w>gd <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
    nnoremap ? <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
]]

-- undo/REDO via vscode
vim.keymap.set("n", "u", "<Cmd>call VSCodeNotify('undo')<CR>")
vim.keymap.set("n", "<C-r>", "<Cmd>call VSCodeNotify('redo')<CR>")

-- Disable providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
