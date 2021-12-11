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

require("packer").startup({
  function(use)
    use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}

    use({"wbthomason/packer.nvim", opt = true})

    use {"onsails/lspkind-nvim", event = "BufEnter"}
    use {"hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('config.nvim-cmp')]]}

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

    if vim.g.is_mac then
      use {"hrsh7th/cmp-emoji", after = 'nvim-cmp'}
    end
    if vim.g.is_mac then
      use({ "nvim-treesitter/nvim-treesitter", event = 'BufEnter', run = ":TSUpdate", config = [[require('config.treesitter')]] })
    end

    if vim.g.is_win then
      use({ "numirias/semshi", ft = "python", config = "vim.cmd [[UpdateRemotePlugins]]" })
    end

    use({"machakann/vim-swap", event = "VimEnter"})
    use {
      'phaazon/hop.nvim',
      event = "VimEnter",
      config = function()
        vim.defer_fn(function() require('config.nvim_hop') end, 2000)
      end
    }

    -- use({"sainnhe/edge", opt = true})
    use({"sainnhe/sonokai", opt = true})

    -- use {
    --   'nvim-lualine/lualine.nvim', event = 'VimEnter',
    --   requires = {'kyazdani42/nvim-web-devicons', opt = true},
    --   config = [[require('config.statusline')]]
    -- }

    use({ "akinsho/bufferline.nvim", event = "VimEnter", config = [[require('config.bufferline')]] })
    -- use({ "elzr/vim-json", ft = { "json", "markdown" } })

    if vim.g.is_win or vim.g.is_mac then
      use({
        "iamcco/markdown-preview.nvim",
        run = function()
          fn["mkdp#util#install"]()
        end,
        ft = { "markdown" },
      })
    end

    use({'folke/zen-mode.nvim', cmd = 'ZenMode', config = [[require('config.zen-mode')]]})

    if vim.g.is_win or vim.g.is_mac then
      use({
        "glacambre/firenvim",
        run = function() fn["firenvim#install"](0) end,
        opt = true,
        setup = [[vim.cmd('packadd firenvim')]],
      })
    end
    use({"gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]]})

  end,
  config = {
    max_jobs = 16,
    compile_path = util.join_paths(vim.fn.stdpath('config'), 'lua', 'packer_compiled.lua'),
    git = {
      default_url_format = plug_url_format,
    },
  },
})

local status, _ = pcall(require, 'packer_compiled')
if not status then
  vim.notify("Error requiring packer_compiled.lua: run PackerSync to fix!")
end
