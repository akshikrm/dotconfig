return {
	'saghen/blink.cmp',
	enabled = true,
	version = '*',
	opts = {
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = {
			menu = { auto_show = false },
		},
		sources = {
			default = { 'lsp', 'path', 'buffer' },
			cmdline = {},
		},
	},
}
