local awful = require("awful")
local beautiful = require("beautiful")

awful.rules.rules = {
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen,
     }
    },
    { rule_any = {
        instance = {
          "pinentry", -- Pinentry
        },
        class = {
          "Sxiv",        -- Sxiv image viewer
          "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
        }, name = {
          "Event Tester",  -- xev.
	  "Friends List",  -- Steam friends list
        },
        role = {
          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
        }
      }, properties = { floating = true }}
}
