---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local images_path = gfs.get_configuration_dir() .. "images/"

local colors = {
	normal = {
		bg = "#242933",
		fg = "#AEB3BB",
	}, focus = {
		bg = "#2E3440",
		fg = "#ECEFF4",
	}, urgent = {
		bg = "#2E3440",
		fg = "#BF616A",
	}, minimize = {
		bg = "#2E3440",
		fg = "#444444",
	}
}

local theme = {}

theme.font          = "sans 12"

theme.bg_normal     = colors.normal.bg
theme.bg_focus      = colors.focus.bg
theme.bg_urgent     = colors.urgent.bg
theme.bg_minimize   = colors.minimize.bg
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = colors.normal.fg
theme.fg_focus      = colors.focus.fg
theme.fg_urgent     = colors.urgent.fg
theme.fg_minimize   = colors.minimize.fg

theme.useless_gap   = dpi(16)
theme.border_width  = dpi(4)

theme.taglist_bg_focus = theme.bg_normal
theme.taglist_bg_urgent = theme.bg_normal
theme.taglist_bg_occupied = theme.bg_normal
theme.taglist_bg_empty = theme.bg_normal
theme.taglist_bg_volatile = theme.bg_normal

theme.taglist_font = "sans bold 12"

theme.titlebar_bg_focus = theme.bg_normal
theme.titlebar_fg_focus = theme.fg_normal

-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

theme.menu_submenu_on = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

theme.systray_icon_spacing = dpi(2)

theme.bar_item_padding = 2

theme.wallpaper = os.getenv("XDG_DATA_HOME") .. "/" .. "wallpaper"

theme.icon_theme = "Papirus"

return theme
