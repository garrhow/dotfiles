local awful = require("awful")
local beautiful = require("beautiful")
local wibox = require("wibox")
local dpi = require("beautiful.xresources").apply_dpi

local old_cursor, old_wibox

local power = wibox.widget {
	{
		align = "center",
		markup = "<b></b>",
		widget = wibox.widget.textbox,
	},
	bg = beautiful.bg_focus,
	buttons = awful.button({ "" }, 1, function() awful.spawn("rofi-power") end, nil),
	forced_width = dpi(28),
	widget = wibox.container.background,
}

power:connect_signal("mouse::enter", function()
	local w = mouse.current_wibox
	old_cursor, old_wibox = w.cursor, w
	w.cursor = "hand2"
end)

power:connect_signal("mouse::leave", function()
	old_wibox.cursor = old_cursor
end)

return power
