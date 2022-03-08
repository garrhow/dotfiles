apps = {
	browser = os.getenv("BROWSER") or "firefox",
	editor = os.getenv("EDITOR") or "vi",
	screenshot = "flameshot gui",
	terminal = os.getenv("TERMINAL") or "xterm",
}

apps.editor_cmd = apps.terminal .. " -e " .. apps.editor
apps.manual_cmd = apps.terminal .. " -e man "

return apps
