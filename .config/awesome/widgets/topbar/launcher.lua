local awful = require("awful")
local beautiful = require("beautiful")

local apps = require("config.apps")

myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", apps.manual_cmd .. " awesome" },
   { "edit config", apps.editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", apps.terminal }
                                  }
                        })

launcher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

return launcher
