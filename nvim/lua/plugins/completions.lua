return {
	'saghen/blink.cmp',
	version = '*',
	opts = {
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = {
			menu = { auto_show = false },
			ghost_text = {
				enabled = true,
			}
		},
	},
	sources = {
		default = { 'lsp', 'path', 'buffer' }
	},
}
