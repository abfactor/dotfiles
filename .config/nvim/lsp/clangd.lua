return {
    cmd = { 'clangd', '--background-index' },
    root_markers = { 'compile_commands.json', '.clangd', '.git' },
    filetypes = { 'c', 'cpp' },
}