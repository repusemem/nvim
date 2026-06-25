return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function(plugin)
		local package = vim.json.decode(table.concat(vim.fn.readfile(plugin.dir .. "/package.json"), "\n"))
		local output = vim.fn.system({ plugin.dir .. "/app/install.sh", "v" .. package.version })
		if vim.v.shell_error ~= 0 then
			error(output)
		end
	end,
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
}
