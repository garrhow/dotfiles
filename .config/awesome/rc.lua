-- Load luarocks if available
pcall(require, "luarocks.loader")

-- Disable tmux hotkeys
package.loaded["awful.hotkeys_popup.keys.tmux"] = {}

-- Standard awesome libraries
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
require("awful.autofocus")
require("awful.hotkeys_popup.keys")

-- Beautiful theming
beautiful.init(gears.filesystem.get_configuration_dir() .. "theme.lua")

-- Variables
modkey = "Mod4"
awful.layout.layouts = require("config.layouts")

-- Custom files
require("bindings")
require("errors")
require("rules")
require("signals")
require("widgets")
