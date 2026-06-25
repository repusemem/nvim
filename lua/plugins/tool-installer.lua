return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	opts = {
		ensure_installed = {
			"stylua",
			"prettier",
			"codespell",
			"black",
			"isort",
		},
		auto_update = false,
		run_on_start = true,
		start_delay = 3000,
	},
}
