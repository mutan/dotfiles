# To recreate config file:
# 1) rm ~/.config/i3/config
# 2) i3-config-wizard

# Reference https://i3wm.org/docs/userguide.html

# set modifiers
# Mod4 - Windows button
# Mod1 - Alt button
set $mod Mod4
set $alt Mod1

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango: Noto Sans 12

# Switch language
# grp:caps_toggle - Caps Lock
# grp:alt_shift_toggle - Alt + Shift
exec --no-startup-id setxkbmap -layout us,ru -option grp:caps_toggle

# Turn num lock on on system start
exec_always --no-startup-id numlockx on

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet

# Autostart programms
exec --no-startup-id flameshot
exec --no-startup-id dropbox start
exec --no-startup-id yandex-disk start

###

# The combination of xss-lock, nm-applet and pactl is a popular choice, so
# they are included here as an example. Modify as you see fit.

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

###


### Dmenu

# start dmenu (a program launcher)
# bindsym $mod+d exec dmenu_run

bindsym $mod+Shift+d exec i3-dmenu-desktop --dmenu="dmenu -i -fn 'Noto Sans:size=12'"
bindsym $mod+d exec rofi -lines 12 -padding 18 -width 60 -location 0 -show drun -sidebar-mode -columns 3 -font 'Noto Sans 12'


### Binds

# split in horizontal orientation
bindsym $mod+g split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# change focus - vim stile
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window - vim stile
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+q kill
bindsym $alt+F4 kill

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
    bindsym h resize shrink width 5 px or 5 ppt
    bindsym j resize grow height 5 px or 5 ppt
    bindsym k resize shrink height 5 px or 5 ppt
    bindsym l resize grow width 5 px or 5 ppt
    bindsym Left resize shrink width 5 px or 5 ppt
    bindsym Down resize grow height 5 px or 5 ppt
    bindsym Up resize shrink height 5 px or 5 ppt
    bindsym Right resize grow width 5 px or 5 ppt
    # back to normal: Enter or Escape
    bindsym Escape mode "default"
    bindsym Return mode "default"
}
bindsym $mod+r mode "resize"


# redshift modes
bindsym $mod+t mode "$mode_redshift"
set $mode_redshift Set colour temperature: (a)uto, (r)eset, (2)500K, (3)000K, (4)000K, (5)000K, (6)000K
set $kill_redshift pkill -9 redshift;
mode "$mode_redshift" {
    bindsym a exec --no-startup-id "$kill_redshift redshift -P -t 5000:4000", mode "default"
    bindsym r exec --no-startup-id "$kill_redshift redshift -x", mode "default"
    bindsym 2 exec --no-startup-id "$kill_redshift redshift -P -O 2500", mode "default"
    bindsym 3 exec --no-startup-id "$kill_redshift redshift -P -O 3000", mode "default"
    bindsym 4 exec --no-startup-id "$kill_redshift redshift -P -O 4000", mode "default"
    bindsym 5 exec --no-startup-id "$kill_redshift redshift -P -O 5000", mode "default"
    bindsym 6 exec --no-startup-id "$kill_redshift redshift -P -O 6000", mode "default"
 
    # exit mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

### Workspaces

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1: "
set $ws2 "2: "
set $ws3 "3: "
set $ws4 "4: "
set $ws5 "5: "
set $ws6 "6: "
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# switch to workspace
bindsym $alt+Control+Right workspace next
bindsym $alt+Control+Left workspace prev
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# window rules, you can find the window class using xprop
for_window [class=".*"] border pixel 2
assign [class=Firefox] $ws1
assign [class=Gnome-terminal] $ws2
assign [class=jetbrains-phpstorm] $ws3
assign [class=Code] $ws4
assign [class="teams-for-linux"] $ws5
assign [class="Microsoft Teams - Preview"] $ws5
assign [class="Org.gnome.Nautilus"] $ws6
for_window [class=Pavucontrol] floating enable
for_window [class=Firefox|Gnome-terminal|Org.gnome.Nautilus] focus


### Displays

# That will return all the connected monitors (like LVDS-1 or DVI-D-0 for instance):
#   xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1
# This command sets the brightness to 70%.
#   xrandr --output eDP-1 --brightness 0.7

set $mainmonitor DP-1-1
set $secondmonitor DP-1-2
set $laptopmonitor eDP-1

# Use this for 3 monitor setup at work
#exec --no-startup-id xrandr --output $secondmonitor --mode 1920x1200 --pos 0x0 --rotate normal --output $mainmonitor --primary --mode 1920x1200 --pos 1920x0 --rotate normal --output $laptopmonitor --mode 1920x1080  --pos 3840x0 --rotate normal
#workspace 1 output $laptopmonitor
#workspace 2 output $mainmonitor
#workspace 3 output $secondmonitor

#Use this for only laptop
exec --no-startup-id xrandr --output $mainmonitor --off --output $secondmonitor --off --output $laptopmonitor --primary --mode 1920x1080 --pos 0x0 --rotate normal
exec --no-startup-id xrandr --output DP-1-1 --off --output DP-1-2 --off --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal


### Modes

# Shutdown, Reboot, Lock Screen, and Logout 
set $mode_power "Power"
bindsym $mod+Shift+p mode $mode_power
mode $mode_power {
    bindsym p       exec systemctl poweroff
    bindsym r       exec systemctl reboot 
    bindsym l       exec i3lock -i /home/akim/dotfiles/images/Focal-Fossa_WP_1920x1080.png, mode "default"
    bindsym q       exec --no-startup-id i3-msg exit, mode "default"
    bindsym Return  mode "default"
    bindsym Escape  mode "default"
}

# Launch programms
set $mode_launcher "Launch"
bindsym $mod+Shift+o mode $mode_launcher
mode $mode_launcher {
    bindsym f       exec firefox, mode "default"
    bindsym p       exec phpstorm, mode "default"
    bindsym c       exec code, mode "default"
    bindsym t       exec teams-for-linux, mode "default"
    bindsym s       exec flameshot, mode "default"
    bindsym e       exec nautilus --no-desktop, mode "default"
    bindsym Return  mode "default"
    bindsym Escape  mode "default"
}


### Bar

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    status_command i3status
}