local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = require("beautiful.xresources").apply_dpi

local widget = function(inner_widget)
    return wibox.widget {
        widget = wibox.container.margin,
        top = dpi(beautiful.bar_item_padding + 2), 
        bottom = dpi(beautiful.bar_item_padding + 2),
        left = dpi(beautiful.bar_item_padding + 2),
        right = dpi(beautiful.bar_item_padding + 2),
        {
            inner_widget,
            layout = wibox.layout.fixed.horizontal
        }
    }
end

----
-- Widgets
----

clock = require("widgets.topbar.clock")
taglist = require("widgets.topbar.taglist")

local function set_wallpaper(s)
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
    set_wallpaper(s)

    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])

    s.promptbox = awful.widget.prompt()

    taglist.init(s)

    s.topbar = awful.wibar({
	    position = "top",
	    screen = s
    })

    s.topbar:setup {
        layout = wibox.layout.align.horizontal,
        {
            widget(s.taglist),
            s.promptbox,
            layout = wibox.layout.fixed.horizontal
        }, { layout = wibox.layout.fixed.horizontal }, {
            widget(wibox.widget.systray()),
            widget(clock),
            layout = wibox.layout.fixed.horizontal
        },
    }
end)
