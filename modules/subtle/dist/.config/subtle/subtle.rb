# Author::  myrovh
# Version:: 0.0

# == Startup {{{
# Loads subtle launcher
begin
  require "#{ENV["HOME"]}/bin/subtle-contrib/ruby/launcher.rb" 
rescue LoadError => error
  puts error
end
# Loads subtle selector
begin
  require "#{ENV["HOME"]}/bin/subtle-contrib/ruby/selector.rb" 
rescue LoadError => error
  puts error
end
# }}}

# == Options {{{ 
# Window move/resize steps in pixel per keypress
set :increase_step, 5

# Window screen border snapping
set :border_snap, 10

# Default starting gravity for windows. Comment out to use gravity of
# currently active client
set :default_gravity, :center

# Make dialog windows urgent and draw focus
set :urgent_dialogs, false

# Honor resize size hints globally
set :honor_size_hints, false

# Enable gravity tiling for all gravities
set :gravity_tiling, false

# Enable click-to-focus focus model
set :click_to_focus, false

# Skip pointer movement on e.g. gravity change
set :skip_pointer_warp, false

# Skip pointer movement to urgent windows
set :skip_urgent_warp, false

# Set the WM_NAME of subtle (Java quirk)
set :wmname, "LG3D"
# }}}

# == Screen {{{
screen 1 do
  top    [ :views, :title, :spacer, :keychain, :spacer, :sublets ]
  bottom [ ]
end
# }}}

# == Styles{{{
# == Colors {{{
color_black =  "#151515" # Base 00
color_darkgrey = "202020" # Base 01
color_grey =   "#505050" # Base 03
color_white =  "#F5F5F5" # Base 07
color_red =    "#AC4142" # Base 08
color_yellow = "#f4bf75" # Base 0A
color_green =  "#90A959" # Base 0B
color_cyan =   "#75B5AA" # Base 0C
# }}}

# Style for all style elements
style :all do
  background  color_black
  icon        color_cyan
  border      color_white, 0
  padding     0, 3
  font "xft:Ohsnap:pixelsize=12:antialias=false"
end

# Style for the all views
style :views do
  foreground  color_grey

  # Style for the active views
  style :focus do
    foreground  color_yellow
  end

  # Style for urgent window titles and views
  style :urgent do
    foreground  color_red
  end

  # Style for occupied views (views with clients)
  style :occupied do
    foreground  color_green
  end
end

# Style for sublets
style :sublets do
  foreground  color_grey
end

# Style for separator
style :separator do
  foreground  color_white
  separator   "|"
end

# Style for focus window title
style :title do
  foreground  color_yellow
end

# Style for active/inactive windows
style :clients do
  active    color_grey, 1
  inactive  color_black, 1
  margin    2
  width     50
end

# Style for subtle
style :subtle do
  margin      0, 0, 0, 0
  panel       color_black
  # background  color_black
  stipple     color_grey
end
# }}}

# == Gravities {{{
# Top left
gravity :top_left,       [   0,   0,  50,  50 ]
gravity :top_left66,     [   0,   0,  50,  66 ]
gravity :top_left33,     [   0,   0,  50,  34 ]

# Top
gravity :top,            [   0,   0, 100,  50 ]
gravity :top66,          [   0,   0, 100,  66 ]
gravity :top33,          [   0,   0, 100,  34 ]

# Top right
gravity :top_right,      [  50,   0,  50,  50 ]
gravity :top_right66,    [  50,   0,  50,  66 ]
gravity :top_right33,    [  50,   0,  50,  33 ]

# Left
gravity :left,           [   0,   0,  50, 100 ]
gravity :left66,         [   0,   0,  66, 100 ]
gravity :left33,         [   0,   0,  33, 100 ]

# Center
gravity :center,         [   0,   0, 100, 100 ]
gravity :center66,       [  17,  17,  66,  66 ]
gravity :center33,       [  33,  33,  33,  33 ]

# Right
gravity :right,          [  50,   0,  50, 100 ]
gravity :right66,        [  34,   0,  66, 100 ]
gravity :right33,        [  67,   0,  33, 100 ]

# Bottom left
gravity :bottom_left,    [   0,  50,  50,  50 ]
gravity :bottom_left66,  [   0,  34,  50,  66 ]
gravity :bottom_left33,  [   0,  67,  50,  33 ]

# Bottom
gravity :bottom,         [   0,  50, 100,  50 ]
gravity :bottom66,       [   0,  34, 100,  66 ]
gravity :bottom33,       [   0,  67, 100,  33 ]

# Bottom right
gravity :bottom_right,   [  50,  50,  50,  50 ]
gravity :bottom_right66, [  50,  34,  50,  66 ]
gravity :bottom_right33, [  50,  67,  50,  33 ]

# Gimp
gravity :gimp_image,     [  10,   0,  80, 100 ]
gravity :gimp_toolbox,   [   0,   0,  10, 100 ]
gravity :gimp_dock,      [  90,   0,  10, 100 ]
# }}}

# == Grabs {{{ 
# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4

# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4
grab "W-5", :ViewSwitch5
grab "W-6", :ViewSwitch6
grab "W-7", :ViewSwitch7

# Select next and prev view */
grab "W-KP_Add",      :ViewNext
grab "W-KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-g", :WindowStick

# Toggle zaphod mode of window (will span across all screens)
grab "W-equal", :WindowZaphod

# Raise window
grab "W-r", :WindowRaise

# Lower window
grab "W-l", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-Down",  :WindowDown
grab "W-Up",    :WindowUp
grab "W-Right", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# Cycle between given gravities
grab "W-KP_7", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-KP_8", [ :top,          :top66,          :top33          ]
grab "W-KP_9", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-KP_4", [ :left,         :left66,         :left33         ]
grab "W-KP_5", [ :center,       :center66,       :center33       ]
grab "W-KP_6", [ :right,        :right66,        :right33        ]
grab "W-KP_1", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-KP_2", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-KP_3", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# In case no numpad is available e.g. on notebooks
grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-w", [ :top,          :top66,          :top33          ]
grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-a", [ :left,         :left66,         :left33         ]
grab "W-s", [ :center,       :center66,       :center33       ]
grab "W-d", [ :right,        :right66,        :right33        ]
grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]
# 

# Exec programs
grab "W-Return", "termite"
grab "W-p" do
  Subtle::Contrib::Launcher.run
end
grab "W-Tab" do
  Subtle::Contrib::Selector.run
end

# Run Ruby lambdas
grab "S-F2" do |c|
  puts c.name
end

grab "S-F3" do
  puts Subtlext::VERSION
end
# }}}

# == Tags {{{ 
# Simple tags
tag "terms",   "xterm|[u]?rxvt|termite"
tag "browser", "firefox|deluge"
tag "file", "thunar|calibre|sunflower"
tag "minimise", "keepass|pavucontrol|paprefs"
tag "viewing", "eog|vlc|minecraft|zathura|xchm"

# Placement
tag "editor" do
  match  "[g]?vim|mousepad"
  resize true
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "termite|gvim"
  resize true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "vlc"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end

# Gimp
tag "gimp_image" do
  match   :role => "gimp-image-window"
  gravity :gimp_image
end

tag "gimp_toolbox" do
  match   :role => "gimp-toolbox$"
  gravity :gimp_toolbox
end

tag "gimp_dock" do
  match   :role => "gimp-dock"
  gravity :gimp_dock
end

tag "gimp_scum" do
  match role: "gimp-.*|screenshot"
end
# }}}

# == Views {{{ 
view "terms", "terms|default"
view "file", "file"
view "www",   "browser"
view "dev",   "editor"
view "view", "viewing"
view "gimp",  "gimp_.*"
view "mini", "minimise"
# }}}

# == Sublets {{{ 
# Clock sublet
sublet :clock do
  interval      1
  format_string "%I:%M:%S"
end
# Battery sublet
sublet :battery do
  colors 10 => color_red, 30 => color_yellow
end

# }}}
