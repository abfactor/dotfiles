---@diagnostic disable: lowercase-global

function init_mini_nvim()
    local path_package = vim.fn.stdpath('data') .. '/site'
    local mini_path = path_package .. '/pack/deps/start/mini.nvim'
    if not vim.loop.fs_stat(mini_path) then
        vim.cmd('echo "Installing `mini.nvim`" | redraw')
        local clone_cmd = {
            'git', 'clone', '--filter=blob:none',
            -- Uncomment next line to use 'stable' branch
            -- '--branch', 'stable',
            'https://github.com/echasnovski/mini.nvim', mini_path
        }
        vim.fn.system(clone_cmd)
        vim.cmd('packadd mini.nvim | helptags ALL')
    end
end

function add_packages()
    local path_package = vim.fn.stdpath('data') .. '/site'
    require('mini.deps').setup({ path = { package = path_package } })

    MiniDeps.add({
        source = 'nvim-treesitter/nvim-treesitter',
        -- Use 'master' while monitoring updates in 'main'
        checkout = 'master',
        monitor = 'main',
        -- Perform action after every checkout
        hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
    })

    require('nvim-treesitter.configs').setup({
        ensure_installed = { 'lua', 'vimdoc' },
        highlight = { enable = true },
    })

    MiniDeps.add({
        source   = 'neovim/nvim-lspconfig',
        checkout = 'master'
    })

    -- MiniDeps.add({
    --     source = 'neoclide/coc.nvim',
    --     checkout = 'release',
    -- })

    MiniDeps.add({
        source = 'nvim-lualine/lualine.nvim',
        checkout = 'master'
    })

    MiniDeps.add({
        source = 'sainnhe/edge'
    })
end
