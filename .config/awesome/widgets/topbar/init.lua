local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = require("beautiful.xresources").apply_dpi

local apps = require("config.apps")

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
launcher = require("widgets.topbar.launcher")
power = require("widgets.topbar.power")
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

awful.screen.connect_for_each_screen(function(screen)
    set_wallpaper(screen)

    awful.tag({ "•", "•", "•", "•", "•", "•", "•", "•", "•", }, screen, awful.layout.layouts[1])


    screen.layoutbox = awful.widget.layoutbox(screen)
    screen.layoutbox:buttons(gears.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))

    screen.promptbox = awful.widget.prompt()

    taglist.init(screen)

    screen.topbar = awful.wibar({
	    position = "top",
	    screen = screen
    })

    screen.topbar:setup {
        layout = wibox.layout.align.horizontal,
	expand = "none",
        { -- Left widgets
		layout = wibox.layout.align.horizontal,
        	screen.layoutbox,
	},
        widget(screen.taglist), -- Middle widget
	{ -- Right widgets
		layout = wibox.layout.align.horizontal,
        	widget(wibox.widget.systray()),
        	widget(clock),
		power,
	}
    }
end)
