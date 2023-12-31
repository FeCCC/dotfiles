vim.g.encoding = "utf-8" -- 设置编码utf8
vim.o.fileencodings = "ucs-bom ,utf-8 ,cp936 ,gb18030 ,big5 ,euc-jp ,euc-kr ,latin1" -- 设置编码自动识别
vim.o.wrap = false -- 禁止折行显示文本
vim.o.scrolloff = 8 -- 光标移动的时候始终保持 8 个空格的间隔
vim.o.sidescrolloff = 8 -- 光标移动的时候始终保持 8 个空格的间隔
vim.o.number = true -- 设置行号
--vim.o.relativenumber = true         -- 设置相对行号
vim.wo.cursorline = true -- 设置高亮显示光标所在行
vim.wo.signcolumn = "yes" -- 设置左侧图标指示列
vim.o.shiftround = true -- NORMAL 模式下 >> << 和 INSERT 模式下 CTRL-T CTRL-D 的缩进长度
vim.o.shiftwidth = 4 -- NORMAL 模式下 >> << 和 INSERT 模式下 CTRL-T CTRL-D 的缩进长度
vim.o.tabstop = 4 -- 修改tab显示宽度
vim.bo.tabstop = 4 -- 修改tab显示宽度
--vim.o.expandtab = true              -- 把tab替换为空格 4 个空格
--vim.bo.expandtab = true             -- 设置空格替代 tab
vim.cmd("set expandtab")
vim.o.list = true -- 把空格显示成一个点
vim.o.listchars = "tab:>-,space:·" -- 把空格显示成一个点
vim.bo.autoindent = true -- 新行对齐当前行
vim.bo.smartindent = true -- 新行对齐当前行
vim.o.ignorecase = true -- 搜索大小写不敏感 而在包含大写的时候让搜索变成大小写敏感
vim.o.smartcase = true -- 搜索大小写不敏感 而在包含大写的时候让搜索变成大小写敏感
vim.g.incsearch = true -- 输入的同时搜索
vim.o.hlsearch = false -- 搜索结果不高亮显示
vim.o.cmdheight = 1 -- 命令行高设置为 1 行
vim.g.autoread = true -- 当文件被外部程序修改的时候 自动加载修改后的内容
vim.bo.autoread = true -- 当文件被外部程序修改的时候 自动加载修改后的内容
vim.o.mouse = "a" -- 开鼠标支持
vim.o.backup = false -- 禁止创建备份文件
vim.o.writebackup = false -- 禁止创建备份文件
vim.o.swapfile = false -- 禁止创建备份文件
vim.o.completeopt = "menu,menuone,noselect,noinsert" -- 自动补全但是不会自动选中
vim.o.wildmenu = true -- 命令tab补全
vim.o.showtabline = 2 -- 永远显示 tabline
vim.g.showmode = false -- 使用增强状态栏插件后不需要 vim 的模式提示

vim.o.updatetime = 300 -- 缩短 swap file 的更新时间间隔
vim.o.timeoutlen = 500 -- 设置快捷键触发的等待时间

vim.o.clipboard = "unnamedplus" -- 使用系统剪贴板

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions" -- session

require("config.autocmd")
