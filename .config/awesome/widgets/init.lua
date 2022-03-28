local awful = require("awful")
local menubar = require("menubar")

local apps = require("config.apps")

menubar.utils.terminal = apps.terminal -- Set the terminal for applications that require it

require("widgets.topbar")
