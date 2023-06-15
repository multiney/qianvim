-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = ",", -- set default local leader key

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<A-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<A-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<A-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<A-Right>', ':vertical resize +2<CR>', opts)

-- bufferline
vim.keymap.set('n', '<A-j>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<A-k>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<AS-j>', ':BufferLineMovePrev<CR>', opts)
vim.keymap.set('n', '<AS-k>', ':BufferLineMoveNext<CR>', opts)
vim.keymap.set('n', '<A-q>', ':bd|bn<CR>', opts)

-- gj | gk
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- save
vim.keymap.set("n", '<C-s>', ':w<CR>', opts)

-- termkey
vim.keymap.set("n", "<C-;>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", opts)
vim.keymap.set("t", "<C-;>", "<C-\\><C-n><Cmd>exe v:count1 . 'ToggleTerm'<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -5<CR>", opts)
vim.keymap.set("n", "0", "^", opts)
vim.keymap.set("n", "<Leader>q", ":wq<CR>", opts)
vim.keymap.set("n", "<Leader>gs", ":Git<CR>", opts)
vim.keymap.set("n", "<Leader>gb", ":Git blame<CR>", opts)
vim.keymap.set("n", "<Leader>ss", ":source ~/.config/nvim/init.vim<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------

vim.keymap.set('i', 'jj', '<ESC>', opts)

-- 插件快捷键
local pluginKeys = {}

-- 自定义 toggleterm 3个不同类型的命令行窗口
-- <leader>ta 浮动
-- <leader>tb 右侧
-- <leader>tc 下方
-- 特殊lazygit 窗口，需要安装lazygit
-- <leader>tg lazygit
pluginKeys.mapToggleTerm = function(toggleterm)
  vim.keymap.set({ "n", "t" }, "<A-g>", toggleterm.toggleA)
  vim.keymap.set({ "n", "t" }, "<A-v>", toggleterm.toggleB)
  vim.keymap.set({ "n", "t" }, "<A-h>", toggleterm.toggleC)
  vim.keymap.set({ "n", "t" }, "<leader>tg", toggleterm.toggleG)
end

return pluginKeys
