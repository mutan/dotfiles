# Reference https://i3wm.org/docs/i3status.html

general {
    output_format = "i3bar"
    interval = 1
    color_good = '#2f343f'
    color_degraded = '#ebcb8b'
    color_bad = '#ba5e57'
}

order += "cpu_temperature 0"
order += "cpu_usage"
order += "disk /"
order += "volume master"
order += "tztime local"
order += "battery all"

cpu_temperature 0 {
    format = " %degrees °C"
    max_threshold = "75"
    path = "/sys/class/thermal/thermal_zone0/temp"
}

cpu_usage {
    format = " %usage"
}

disk "/" {
    format = " %avail / %total"
    prefix_type = "custom"
    low_threshold = "10"
    threshold_type = "gbytes_avail"
    format_below_threshold = " Warning: %avail"
    format_not_mounted = "No disk"
}

volume master {
    format = " %volume"
    format_muted = " Muted"
    device = "default"
    mixer = "Master"
    mixer_idx = 0
}

tztime local {
    format = "%-d %b %a %H:%M"
}

battery all {
    format = "%status %percentage"
    last_full_capacity = false
    integer_battery_capacity = true
    format_down = "No battery"
    status_chr = "⚡"
    status_bat = ""
    status_unk = "Unknown"
    status_full = ""
    path = "/sys/class/power_supply/BAT%d/uevent"
    low_threshold = 20
}