-- builtin lsp
vim.lsp.enable({
    'clangd',
    'rust_analyzer',
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client ~= nil then
      client:supports_method('textDocument/completion')
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

