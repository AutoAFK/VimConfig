require('plugins')
local opt = vim.opt

opt.backup = false                          -- creates a backup file
opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
opt.conceallevel = 0                        -- so that `` is visible in markdown files
opt.fileencoding = "utf-8"                  -- the encoding written to a file
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.showtabline = 2                         -- always show tabs
opt.smartcase = true                        -- smart case
opt.smartindent = true                      -- make indenting smarter again
opt.splitbelow = true                       -- force all horizontal splits to go below current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window
opt.swapfile = false                        -- creates a swapfile
opt.termguicolors = true                    -- set term gui colors (most terminals support this)
opt.undofile = false                         -- enable persistent undo
opt.updatetime = 300                        -- faster completion (4000ms default)
opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
opt.tabstop = 4                             -- insert 2 spaces for a tab
opt.number = true                           -- set numbered lines
opt.relativenumber = true                  -- set relative numbered lines
opt.numberwidth = 2                         -- set number column width to 2 {default 4}
opt.wrap = false                            -- display lines as one long line
opt.scrolloff = 8                           -- is one of my fav
opt.sidescrolloff = 8

opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
-- Mason

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"sumneko_lua", "gopls"},
	automatic_installation = true,
})

-- Setup mini with everything
require('mini.completion').setup()
require('mini.fuzzy').setup()
require('mini.indentscope').setup()
require('mini.jump').setup()
require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.tabline').setup()

-- Go setup
require('go').setup()

-- Setup colorscheme
vim.g.starry_italic_comments = false
vim.g.starry_italic_string = false
vim.g.starry_italic_keywords = false
vim.g.starry_italic_functions = false
vim.g.starry_italic_variables = false
vim.g.starry_contrast = true
vim.g.starry_borders = true 
vim.g.starry_disable_background = true  
vim.g.starry_style_fix=true  
vim.g.starry_style="earlysummer"
vim.g.starry_darker_contrast=true  
vim.g.starry_deep_black=false      
vim.g.starry_italic_keywords=false
vim.g.starry_italic_functions=false
vim.g.starry_set_hl=true 
vim.g.starry_daylight_switch=false
vim.cmd[[colorscheme starry]]
