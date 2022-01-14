local utils = require("utils")
local fn = vim.fn

vim.g.package_home = fn.stdpath("data") .. "/site/pack/packer/"
local packer_install_dir = vim.g.package_home .. "/opt/packer.nvim"

local plug_url_format = ""
if vim.g.is_linux then
  plug_url_format = "https://hub.fastgit.org/%s"
else
  plug_url_format = "https://github.com/%s"
end

local packer_repo = string.format(plug_url_format, "wbthomason/packer.nvim")
local install_cmd = string.format("10split |term git clone --depth=1 %s %s", packer_repo, packer_install_dir)

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_install_dir) == "" then
  vim.api.nvim_echo({ { "Installing packer.nvim", "Type" } }, true, {})
  vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd("packadd packer.nvim")
local util = require('packer.util')
-- auto pair
require("nvim-autopairs").setup({
  ignored_next_char = "[%w%.]" -- will ignore alphanumeric and `.` symbol
})

require("packer").startup({
  function(use)
    use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}

    use({"wbthomason/packer.nvim", opt = true})
    use {
      'kyazdani42/nvim-tree.lua',
      config = [[require('config.nvim-tree')]]
  }

    -- vì 2 thư viện dưới đây mà không thể auto import library trong python.
    -- use {"onsails/lspkind-nvim", event = "BufEnter"}
    -- use {"hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('config.nvim-cmp')]]}

    -- use {"hrsh7th/cmp-nvim-lsp", after = "nvim-cmp"}
    -- use({ "neovim/nvim-lspconfig", after = "cmp-nvim-lsp", config = [[require('config.lsp')]] })
    -- use {"hrsh7th/cmp-nvim-lua", after = "nvim-cmp"}
    -- use {"hrsh7th/cmp-path", after = "nvim-cmp"}
    -- use {"hrsh7th/cmp-buffer", after = "nvim-cmp"}
    -- use({ "Vimjas/vim-python-pep8-indent", ft = { "python" } })
    -- use({ "jeetsukumaran/vim-pythonsense", ft = { "python" } })
    -- use({"SirVer/ultisnips", event = 'InsertEnter'})
    -- use {"quangnguyen30192/cmp-nvim-ultisnips", after = {'nvim-cmp', 'ultisnips'}}

    use {'neoclide/coc.nvim', branch = 'release'}
    if vim.g.is_win then
      use({ "numirias/semshi", ft = "python", config = "vim.cmd [[UpdateRemotePlugins]]" })
    end
    use({"machakann/vim-swap", event = "VimEnter"})

    -- move faster
    use {
      'phaazon/hop.nvim',
      event = "VimEnter",
      config = function()
        vim.defer_fn(function() require('config.nvim-hop') end, 2000)
      end
    }
    use({"sainnhe/sonokai", opt = true}) -- Theme

    -- tạo dòng tiêu đề
    use({ "akinsho/bufferline.nvim", event = "VimEnter", config = [[require('config.bufferline')]] })

    -- gợi ý nhanh ở command
    use({"gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]]})
    
    -- Nếu chỉ dẫn trên git clone về thư mục start thì thêm event="VimEnter" vào.
    -- multi cursor
    use({"mg979/vim-visual-multi", event = "VimEnter"})

  end
})

local status, _ = pcall(require, 'packer_compiled')
if not status then
  vim.notify("Error requiring packer_compiled.lua: run PackerSync to fix!")
end
