--
-- conky2 (WIP)
--
package.path = package.path .. ";../scripts/?.lua"

-- conky2
conky.config = {
  -- ######################
  -- # - Conky settings - #
  -- ######################
  update_interval = 1,
  total_run_times = 0,
  net_avg_samples = 1,
  cpu_avg_samples = 1,
  if_up_strictness = "link",
  imlib_cache_size = 0,
  double_buffer = true,
  no_buffers = true,
  format_human_readable = true,

  -- #####################
  -- # - Text settings - #
  -- #####################
  use_xft = true,
  font = "Hack:size=12",
  override_utf8_locale = true,
  text_buffer_size = 2048,

  -- #############################
  -- # - Window specifications - #
  -- #############################
  own_window_class = "Conky",
  own_window = true,
  own_window_type = "normal",
  own_window_transparent = false,
  own_window_argb_visual = true,
  own_window_argb_value = 75,
  own_window_hints = "undecorated,below,sticky,skip_taskbar,skip_pager",
  border_inner_margin = 5,
  border_width = 10,
  alignment = "top_right",
  gap_x = 1600,
  gap_y = 5,
  minimum_height = 1080,
  minimum_width = 300,
  default_bar_height = 60,
  default_bar_width = 5,

  -- #########################
  -- # - Graphics settings - #
  -- #########################
  draw_shades = false,
  default_color = "cccccc",
  color0 = "white",
  color1 = "grey",
  color2 = "5C3566",
  --  use_spacer =  "right"
}

-- ##############
-- # - SYSTEM - #
-- ##############
conky.text = [[
  ${goto 10}$color1${font Hack:size=12}SYSTEM $stippled_hr$font$color
  ${goto 20}${voffset 10}$color1${font Hack:size=12}kernel: $font$color\
  ${goto 200}$color0${font Hack:size=14}${kernel}$font$color
  ${goto 20}${voffset 10}$color1${font Hack:size=12}uptime: $font$color\
  ${goto 200}$color0${font Hack:size=14}${uptime}$font$color
]]
-- ###########
-- # - CPU - #
-- ###########
conky.text = conky.text .. [[
  ${goto 10}${voffset 10}$color1${font Hack:size=12}CPU $stippled_hr$font$color
  ${goto 30}${voffset 10}$color1${font Hack:size=12}load: $font$color\
  ${goto 100}$color0${font Hack:size=14}${cpu cpu0}$font$color$color1${font Hack:size=12}%$font$color\
  ${goto 200}${voffset -10}${cpugraph 20,160}
]]
-- # - clock
conky.text = conky.text .. [[
  ${goto 30}$color1${font Hack:size=12}clock: $font$color\
  ${goto 100}$color0${font Hack:size=14}${freq cpu0}$font$color$color1${font Hack:size=12}MHz${font}$color
  ]]
-- #################
-- # - PROCESSES - #
-- #################
conky.text = conky.text .. [[
  ${goto 10}${voffset 10}${font Hack:size=12}PROCESSES $stippled_hr$font
  ${goto 30}$color1${font Hack:size=12}name${font}$color\
  ${goto 120}$color1${font Hack:size=12}pid${font}$color\
  ${goto 200}$color1${font Hack:size=12}cpu%$font$color\
  ${goto 280}$color1${font Hack:size=12}mem%$font$color
  ]]
-- # - top1
conky.text = conky.text .. [[
  ${goto 30}$color0${font Hack:size=12}${top name 1}$font$color\
  ${goto 120}$color0${font Hack:size=12}${top pid 1}$font$color\
  ${goto 180}$color0${font Hack:size=12}${top cpu 1}$font$color\
  ${goto 260}$color0${font Hack:size=12}${top mem 1}$font$color
  ]]
-- # - top2
conky.text = conky.text .. [[
  ${goto 30}$color0${font Hack:size=12}${top name 2}$font$color\
  ${goto 120}$color0${font Hack:size=12}${top pid 2}$font$color\
  ${goto 180}$color0${font Hack:size=12}${top cpu 2}$font$color\
  ${goto 260}$color0${font Hack:size=12}${top mem 2}$font$color
  ]]
-- # - top3
conky.text = conky.text .. [[
  ${goto 30}$color0${font Hack:size=14}${top name 3}$font$color\
  ${goto 120}$color0${font Hack:size=14}${top pid 3}$font$color\
  ${goto 180}$color0${font Hack:size=14}${top cpu 3}$font$color\
  ${goto 260}$color0${font Hack:size=14}${top mem 3}$font$color
  ]]
-- ##############
-- # - MEMORY - #
-- ##############
conky.text = conky.text .. [[
  ${goto 10}${voffset 10}${font Hack:size=12}MEMORY $stippled_hr${font}
  ${goto 30}$color1${font Hack:size=12}load: $font$color\
  ${goto 100}$color0${font Hack:size=14}${memperc}$font$color\
  ${offset 2}$color1${font Hack:size=12}%$font$color\
  ${goto 200}${memgraph 20,120}
  ${goto 30}$color1${font Hack:size=12}free: $font$color\
  ${goto 100}$color0${font Hack:size=14}${memfree}$font$color\
  ${goto 190}$color1${font Hack:size=12}used: $font$color\
  $color0${font Hack:size=14}${mem}$font$color
  ]]
-- #############
-- # - CLOCK - #
-- #############
conky.text = conky.text .. [[
  ${font Hack:size=12}TIME $stippled_hr${font}
  ${alignc}$color0${font Hack:size=40}${time %H:%M:%S}$font$color
  ${alignr 25}${font Hack:size=12}${time %Y-%m-%d (%a)}$font
  ]]
-- ##############
-- # - fs '/' - #
-- ##############
conky.text = conky.text .. [[
  ${goto 10}${voffset 10}${font Hack:size=12}FILESYSTEM $stippled_hr${font}
  ${goto 30}$color1${font Hack:size=12}/ (${fs_size /}) $stippled_hr${font}$color
  ${goto 40}$color1${font Hack:size=12}load: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_used_perc /}$font$color\
  ${offset 2}$color1${font Hack:size=12}%$font$color\
  ${goto 200}${fs_bar 5,120 /}
  ]]
-- # - free/used
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}free: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_free /}$font$color\
  ${goto 200}$color1${font Hack:size=12}used: $font$color\
  $color0${font Hack:size=14}${fs_used /}$font$color
  ]]
-- # - read/write
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}read: $font$color\
  ${goto 120}$color0${font Hack:size=14}${diskio_read /}$font$color\
  ${goto 200}$color1${font Hack:size=12}write: $font$color\
  $color0${font Hack:size=14}${diskio_write /}$font$color
  ]]
-- ##################
-- # - fs '/home' - #
-- ##################
conky.text = conky.text .. [[
  ${goto 30}$color1${font Hack:size=12}/home (${fs_size /home}) $stippled_hr${font}$color
  ${goto 40}$color1${font Hack:size=12}load: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_used_perc /home}$font$color\
  ${offset 2}$color1${font Hack:size=12}%$font$color\
  ${goto 200}${fs_bar 5,120 /home}
  ]]
-- # - free/used
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}free: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_free /home}$font$color\
  ${goto 200}$color1${font Hack:size=12}used: $font$color\
  $color0${font Hack:size=14}${fs_used /home}$font$color
  ]]
-- # - read/write
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}read: $font$color\
  ${goto 120}$color0${font Hack:size=14}${diskio_read /dev/mapper/AntergosVG-AntergosHome}$font$color\
  ${goto 200}$color1${font Hack:size=12}write: $font$color\
  $color0${font Hack:size=14}${diskio_write /dev/mapper/AntergosVG-AntergosHome}$font$color
  ]]
-- ####################
-- # - fs '/mybook' - #
-- ####################
conky.text = conky.text .. [[
  ${goto 30}$color1${font Hack:size=12}/mybook (${fs_size /run/media/f4bio/MYBOOK}) $stippled_hr${font}$color
  ${goto 40}$color1${font Hack:size=12}used: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_used_perc /run/media/f4bio/MYBOOK}%$font$color\
  ${goto 200}${fs_bar 5,120 /run/media/f4bio/MYBOOK}
  ]]
-- # - free/used
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}free: $font$color\
  ${goto 120}$color0${font Hack:size=14}${fs_free /run/media/f4bio/MYBOOK}$font$color\
  ${goto 200}$color1${font Hack:size=12}used: $font$color\
  $color0${font Hack:size=14}${fs_used /run/media/f4bio/MYBOOK}$font$color
  ]]
-- # - read/write
conky.text = conky.text .. [[
  ${goto 40}$color1${font Hack:size=12}read: $font$color\
  ${goto 120}$color0${font Hack:size=14}${diskio_read /dev/sdf1}$font$color\
  ${goto 200}$color1${font Hack:size=12}write: $font$color\
  $color0${font Hack:size=14}${diskio_write /dev/sdf1}$font$color
  ]]
-- ###############
-- # - NETWORK - #
-- ###############
conky.text = conky.text .. [[
  ${goto 10}${voffset 10}${font Hack:size=12}NETWORK $stippled_hr${font}
  ]]
-- # |--ip
conky.text = conky.text .. [[
  ${goto 30}$color1${font Hack:size=12}local: $font$color\
  ${goto 190}$color0${font Hack:size=14}${addr wlp5s0}$font$color
  ${goto 30}$color1${font Hack:size=12}public: $font$color\
  ${goto 190}$color0${font Hack:size=14}${curl https://ip.f4b.io/raw}$font$color
  ]]
-- # |-- signal
conky.text = conky.text .. [[
  ${if_up wlp5s0}\
  ${goto 30}$color1${font Hack:size=12}signal: $font$color\
  ${goto 190}$color0${font Hack:size=14}${wireless_link_qual_perc wlp5s0}%$font$color
  $endif
  ]]
-- # |-- down
conky.text = conky.text .. [[
  ${if_up wlp5s0}\
  ${goto 30}$color1${font Hack:size=12}down: $font$color\
  ${goto 100}$color0${font Hack:size=14}${totaldown wlp5s0}$font$color\
  ${goto 190}$color0${font Hack:size=14}${downspeed wlp5s0}$font$color\
  ${offset 2}$color1${font Hack:size=12}/s$font$color
  $endif
  ]]
-- # |-- up
conky.text = conky.text .. [[
  ${if_up wlp5s0}\
  ${goto 30}$color1${font Hack:size=12}up: $font$color\
  ${goto 100}$color0${font Hack:size=14}${totalup wlp5s0}$font$color\
  ${goto 190}$color0${font Hack:size=14}${upspeed wlp5s0}$font$color\
  ${offset 2}$color1${font Hack:size=12}/s${font}$color
  $endif
  ]]
