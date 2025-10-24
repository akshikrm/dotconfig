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
			ghost_text = { enabled = false },
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},
		sources = {
			default = { 'lsp', 'path', 'buffer' },
			cmdline = {},
		},
	},
}
