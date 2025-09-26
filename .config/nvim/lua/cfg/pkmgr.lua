-- local function bootstrap_pckr()
--   local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
--   if not (vim.uv or vim.loop).fs_stat(pckr_path) then
--     vim.fn.system({
--       'git',
--       'clone',
--       "--filter=blob:none",
--       'https://github.com/lewis6991/pckr.nvim',
--       pckr_path
--     })
--   end
--   vim.opt.rtp:prepend(pckr_path)
-- end

-- bootstrap_pckr()

-- local cmd = require('pckr.loader.cmd')
-- local keys = require('pckr.loader.keys')


local function patch_plugin(plugin, patch)
  local patch_dir = vim.fn.stdpath("config") .. "/patches/"
  local install_dir = vim.fn.stdpath("data") .. "/site/pack/pckr/opt/"

  plugin = install_dir .. plugin
  patch = patch_dir .. patch

  local cmd = "git -C " .. plugin .. " apply " .. patch

  os.execute(cmd)
end

-- require('pckr').add {
--   -- {
--   --   'neoclide/coc.nvim',
--   --   branch = "release",
--   --   run = function()
--   --     patch_plugin("coc.nvim", "coc_cmdheight_zero.patch")
--   --   end
--   -- },
--   {
--     'nvim-lualine/lualine.nvim',
--   },
--   {
--     "sainnhe/sonokai",
--     config = function()
--       vim.g.sonokai_enable_italic = true
--       vim.g.sonokai_transparent_background = true
--       vim.g.sonokai_dim_inactive_windows = false

--       vim.cmd.colorscheme('sonokai')
--       -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--       vim.api.nvim_set_hl(0, "MatchParen", {
--         underline = true,
--         bold = true,
--       })
--     end
--   }
-- }

-- Switch to builtin plug manager

vim.pack.add({

  { src = 'https://github.com/sainnhe/sonokai' },
  { src = 'https://github.com/L3MON4D3/LuaSnip' },

})