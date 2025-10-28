local function patch_plugin(plugin, patch)
  local patch_dir = vim.fn.stdpath("config") .. "/patches/"
  local install_dir = vim.fn.stdpath("data") .. "/site/pack/pckr/opt/"

  plugin = install_dir .. plugin
  patch = patch_dir .. patch

  local cmd = "git -C " .. plugin .. " apply " .. patch

  os.execute(cmd)
end

-- Switch to builtin plug manager

vim.pack.add({

  { src = 'https://github.com/sainnhe/sonokai' },
  { src = 'https://github.com/L3MON4D3/LuaSnip' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/nvim-mini/mini.nvim' },

})