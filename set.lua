function SetTheme(theme)
	theme = theme or "catppuccin"
	vim.cmd.colorscheme(theme)
end

SetTheme()
