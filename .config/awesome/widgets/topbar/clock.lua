local wibox = require("wibox")

local clock_format = "%A %B %d, %-l:%M %p"

local clock = wibox.widget.textclock()
clock.font = "sans bold 12"
clock.format = clock_format

return clock
