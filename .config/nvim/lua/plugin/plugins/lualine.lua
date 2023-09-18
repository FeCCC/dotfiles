-- nvim状态栏
local lualine_plugin = {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_c = {
					require("auto-session.lib").current_session_name,
				},
			},
		})
	end,
}
return lualine_plugin
