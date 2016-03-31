---
-- Utility functions.
--
-- @author Jimmy Mabey

---
-- Outputs current uptime.
--
-- @return Conky string
function conky_uptime()
	return "${voffset 4}${color1}Uptime$color" .. "${goto 60}${font 16bit:size=12}" .. conky_pad("${uptime}", 14).."$font"
end
---
-- Pads and right-aligns a parsed Conky string to the given number of spaces.
--
-- @param command      Conky string
-- @param num_spacing  Amount of padding
-- @return String
function conky_pad(command, num_spaces)
	return string.format('%'..num_spaces..'s', conky_parse(command))
end

function conky_format(format, number)
    return string.format(format, conky_parse( number ))
end
