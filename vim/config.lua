--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
-- lvim.colorscheme = "jellybeans"
-- vim.api.nvim_command('set notermguicolors')
vim.api.nvim_command('set relativenumber')

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "s"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-j>"] = "<C-d>"
lvim.keys.normal_mode["<C-k>"] = "<C-u>"
lvim.keys.normal_mode["<leader>o"] = "<cmd>lua require('telescope.builtin').find_files()<cr>"
lvim.keys.normal_mode["<leader>q"] = "<cmd>BufferWipeout<cr>"
-- lvim.keys.normal_mode["e"] = "<cmd>lua require('telescope').extensions.frecency.frecency()<CR>"
lvim.keys.normal_mode["<leader>S"] = "<cmd>lua require('telescope.builtin').grep_string({vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '--no-ignore' }})<cr>"
lvim.keys.normal_mode["<leader>fb"] = "<cmd>lua require('telescope.builtin').file_browser()<cr>"
lvim.keys.normal_mode["<leadera>O"] = "<cmd>lua require('telescope.builtin').find_files({search_dirs = {'/etc/', '/var/', '/home/bogdan0083/'} })<cr>"
lvim.keys.normal_mode["<leader>ka"] = "<cmd>exe 1 . 'wincmd w'<cr>"
lvim.keys.normal_mode["<leader>ks"] = "<cmd>exe 2 . 'wincmd w'<cr>"
lvim.keys.normal_mode["[b"] = "<cmd>:bnext<cr>"
lvim.keys.normal_mode["<leader>kd"] = "<cmd>exe 3 . 'wincmd w'<cr>"
lvim.keys.normal_mode["]b"] = "<cmd>:bprev<cr>"
lvim.keys.normal_mode["//"] = "<cmd>:nohl<cr>"
vim.api.nvim_set_keymap('n', '<leader>j', '<Plug>Lightspeed_s', {})
vim.api.nvim_set_keymap('n', '<leader>J', '<Plug>Lightspeed_S', {})

lvim.keys.normal_mode["e"] = "<cmd>lua require('telescope.builtin').buffers({ sort_lastused = true, ignore_current_buffer = true })<cr>"

require('telescope').load_extension('fzf')
-- unmap a default keymapping

-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

vim.cmd([[
  imap jf <Plug>(emmet-expand-abbr)
  imap jj <Esc>
  
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <C-\><C-n>
  nmap <C-;> <Plug>Lightspeed_s

  set clipboard=unnamedplus

  xmap b ib
  omap b ib
  xmap q iq
  omap q iq
  xmap c iw
  omap c iw
]])

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.nvimtree.setup.view.mappings.list = {
 { key = "s", cb = "<cmd>WhichKey s<cr>" },
}

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

ls.filetype_extend("htmldjango", {"html"})

local function copy(args)
	return args[1]
end

ls.snippets = {
  html = {
		s("di", {
			-- Simple static text.
			t("<!-- START "), f(copy, 1), t({" -->", "\t"}),
			t("<div class=\""), i(1), t("\">"), i(0), t({ "</div>", "" }),
			t("<!-- END "), f(copy, 1), t(" -->"),
		}),
		s("dis", {
			-- Simple static text.
			t("<!-- START "), f(copy, 1), t({" -->", "\t"}),
			t("<section class=\""), i(1), t("\">"), i(0), t({ "</section>", "" }),
			t("<!-- END "), f(copy, 1), t(" -->"),
		})
  },
  scss = {
    s("sm", {
			t({ "@include up('sm') {", "\t" }),
        i(0), t({"", ""}),
      t("}")
    }),
    s("md", {
			t({ "@include up('md') {", "\t" }),
        i(0), t({"", ""}),
      t("}")
    }),
    s("lg", {
			t({ "@include up('lg') {", "\t" }),
        i(0), t({"", ""}),
      t("}")
    }),
    s("xl", {
			t({ "@include up('xl') {", "\t" }),
        i(0), t({"", ""}),
      t("}")
    }),
  },
  php = {
    s("ph", {
      t({"<?php "}), i(0), t({" ?>"})
    }),
    s("phe", {
      t({"<?php echo "}), i(0), t({" ?>"})
    }),
    s("phpwhil", {
      t({"<?php while( "}), i(1), t({" ): ?>", "\t"}),
      i(0), t({ "", "" }),
      t({"<?php endwhile; ?>"})
    }),
    s("phpif", {
      t({"<?php if( "}), i(1), t({" ): ?>", "\t"}),
      i(0), t({ "", "" }),
      t({"<?php endif; ?>"})
    }),
  }
}

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { exe = "black", filetypes = { "python" } },
--   { exe = "isort", filetypes = { "python" } },
--   {
--     exe = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { exe = "flake8", filetypes = { "python" } },
--   {
--     exe = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--severity", "warning" },
--   },
--   {
--     exe = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Php LSP additional settings
local util = require 'lspconfig/util'
local opts = {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_dir = util.root_pattern("composer.json", ".git"),
    settings = {intelephense = {stubs = {'wordpress'}}}
}

require("lvim.lsp.manager").setup("intelephense", opts)

-- Additional Plugins
lvim.plugins = {
    {"noah/vim256-color"},
    {"mattn/emmet-vim", ft = {'html', 'scss', 'sass', 'htmldjango', 'php'}},
    {'wellle/targets.vim'},
    {'tpope/vim-surround'},
    {'dstein64/nvim-scrollview'},
    { "ggandor/lightspeed.nvim", event = "BufRead" },
    -- { "nvim-telescope/telescope-frecency.nvim",
    --   config = function()
    --     require"telescope".load_extension("frecency")
    --   end,
    --   requires = {"tami5/sqlite.lua"} },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
