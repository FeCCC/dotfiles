local map = vim.api.nvim_set_keymap
local silents = { noremap = true, silent = true }
local normal_opt = {}

-- map("n", "<A-m>", ":Neotree<CR>", silents) -- neotree-tree 切换
map("n", "<A-m>", ":NvimTreeToggle<CR>", silents) -- nvimtree-tree 切换

--telescope相关
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, normal_opt)
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, normal_opt)
vim.keymap.set("n", "<leader>fb", builtin.buffers, normal_opt)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, normal_opt)
map("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", silents)
vim.keymap.set("n", "<leader>fd", "<cmd>GrepInDirectory<CR>", { noremap = true, silent = true })
map("n", "<leader>fp", ":lua require'telescope'.extensions.projects.projects{}<CR>", silents)
-- vim.keymap.set("n", "<leader>pd", "<cmd>FileInDirectory<CR>", { noremap = true, silent = true })

--bufferline相关
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", silents)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", silents)
map("n", "<leader>p", ":BufferLinePick<CR>", silents)
map("n", "<leader>mh", ":BufferLineMovePrev<CR>", silents)
map("n", "<leader>ml", ":BufferLineMoveNext<CR>", silents)
map("n", "<leader>ch", ":BufferLineCloseLeft<CR>", silents)
map("n", "<leader>cl", ":BufferLineCloseRight<CR>", silents)
map("n", "<leader>ca", ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", silents)

-- toggleterm相关
map("n", "\\<C-\\>", ":ToggleTerm direction=vertical<CR>", silents)
map("n", "f<C-\\>", ":ToggleTerm direction=float<CR>", silents)
map("n", "t<C-\\>", ":ToggleTerm direction=tab<CR>", silents)

map("n", "<A-o>", ":SymbolsOutline<CR>", silents)

-- undo tree
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
-- gitsigns 相关
map("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>", silents)
map("n", "<leader>gk", "<Cmd>Gitsigns prev_hunk<CR>", silents)
map("n", "<leader>ss", ":Gitsigns stage_hunk<CR>", silents)
map("v", "<leader>ss", ":Gitsigns stage_hunk<CR>", silents)
map("n", "<leader>sr", ":Gitsigns reset_hunk<CR>", silents)
map("v", "<leader>sr", ":Gitsigns reset_hunk<CR>", silents)
map("n", "<leader>sS", "<cmd>Gitsigns stage_buffer<CR>", silents)
map("n", "<leader>su", "<cmd>Gitsigns undo_stage_hunk<CR>", silents)
map("n", "<leader>sR", "<cmd>Gitsigns reset_buffer<CR>", silents)
map("n", "<leader>sp", "<cmd>Gitsigns preview_hunk<CR>", silents)
map("n", "<leader>sb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', silents)
map("n", "<leader>sb", "<cmd>Gitsigns toggle_current_line_blame<CR>", silents)
map("n", "<leader>sd", "<cmd>Gitsigns diffthis<CR>", silents)
map("n", "<leader>sD", '<cmd>lua require"gitsigns".diffthis("~")<CR>', silents)
map("n", "<leader>sd", "<cmd>Gitsigns toggle_deleted<CR>", silents)
map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>", silents)
map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>", silents)

-- diffview 相关
map("n", "<leader>do", ":DiffviewOpen<CR>", silents)
map("n", "<leader>dc", ":DiffviewClose<CR>", silents)
map("n", "<leader>dh", ":DiffviewFileHistory ", silents)

-- auto-session
-- Set mapping for searching a session.
-- ⚠️ This will only work if Telescope.nvim is installed
vim.keymap.set("n", "<leader>fs", require("auto-session.session-lens").search_session, silents)

-- mywords
map("n", "<leader>gl", ":lua require('mywords').hl_toggle()<CR>", silents)
map("n", "<leader>gc", ":lua require('mywords').uhl_all()<CR>", silents)

-- dap相关
map("n", "<F5>", ":lua require'dap'.continue()<CR>", silents)
map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", silents)
map("n", "<leader>i", ":lua require'dap'.step_into()<CR>", silents)
map("n", "<leader>o", ":lua require'dap'.step_over()<CR>", silents)
