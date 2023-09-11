local map = vim.api.nvim_set_keymap
local silents = { noremap = true, silent = true }
local normal_opts = {}

-- 配置leader按键
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map("n", "<C-v>", '"+P', normal_opts)                                      -- 粘贴
map("i", "<C-v>", '<Esc> "+P ', normal_opts)
map("v", "<C-c>", '"+y', normal_opts)                                      -- 复制
map("i", "<C-c>", "<ESC>", normal_opts)                                    -- 编辑模式退出

map("n", "<leader>q", ":q<CR>", normal_opts)                               -- 退出
map("n", "<leader>wq", ":wq<CR>", normal_opts)                             -- 保存退出
map("n", "<leader><leader><leader><leader>q", ":quitall<CR>", normal_opts) -- 全部退出

---[[ 分屏相关操作
map("n", "sl", ":set splitright<CR>:vsplit<CR>", silents)
map("n", "sh", ":set nosplitright<CR>:vsplit<CR>", silents)
map("n", "sj", ":set splitbelow<CR>:split<CR>", silents)
map("n", "sk", ":set nosplitbelow<CR>:split<CR>", silents)

-- 关闭当前
map("n", "sc", "<C-w>c", silents)
-- 关闭其他
map("n", "so", "<C-w>o", silents) -- close others

map("n", "<A-h>", "<C-w>h", silents)
map("n", "<A-j>", "<C-w>j", silents)
map("n", "<A-k>", "<C-w>k", silents)
map("n", "<A-l>", "<C-w>l", silents)

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", silents)
map("n", "<C-Right>", ":vertical resize +2<CR>", silents)
-- 上下比例
map("n", "<C-Down>", ":resize +2<CR>", silents)
map("n", "<C-Up>", ":resize -2<CR>", silents)
-- 相等比例
map("n", "s=", "<C-w>=", silents)
--]]

-- Terminal相关
map("n", "st", ":set splitbelow<CR>:sp | terminal<CR>", silents)
map("n", "stv", ":set splitright<CR>:vsp | terminal<CR>", silents)

map("t", "<A-q>", "<C-\\><C-n>", silents)
map("t", "<A-l>", "<Cmd> wincmd l<CR>", silents)
map("t", "<A-h>", "<Cmd> wincmd h<CR>", silents)
map("t", "<A-j>", "<Cmd> wincmd j<CR>", silents)
map("t", "<A-k>", "<Cmd> wincmd k<CR>", silents)


---[[ table相关操作
--[[ map("n", "tn", ":tabe<CR>", silents) --增加table
map("n", "tq", ":tabc<CR>", silents) --删除table
map("n", "th", ":-tabnext<CR>", silents)
map("n", "tl", ":+tabnext<CR>", silents)
map("n", "tmh", ":-tabmove<CR>", silents)
map("n", "tml", ":+tabmove<CR>", silents) ]]
--]]

require("keymap.plugin")
