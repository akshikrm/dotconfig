return {
	'saghen/blink.cmp',
	enabled = true,
	version = '*',
	opts = {
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = {
			menu = { auto_show = true },
		},
		sources = {
			default = { 'lsp', 'path', 'buffer' },
			cmdline = {},
		},
	},
}
