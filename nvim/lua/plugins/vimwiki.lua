return {
	"vimwiki/vimwiki",
	name = "vimwiki",
	lazy = false,
	init = function()
		vim.g.vimwiki_list = {
			{
				path = '~/Notes/',
				syntax = 'markdown',
				ext = '.md'
			},
		}
	end
}
