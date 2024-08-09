local M = {}

M.hex_para_rgb = function(hex)
	local r = tonumber(hex:sub(2, 3), 16)
	local g = tonumber(hex:sub(4, 5), 16)
	local b = tonumber(hex:sub(6, 7), 16)
	return r, g, b
end

M.rgb_para_hex = function(r, g, b)
	return string.format("#%02x%02x%02x", r, g, b)
end

M.mezclar_colores = function(color1, color2, cantidad)
	local r1, g1, b1 = M.hex_para_rgb(color1)
	local r2, g2, b2 = M.hex_para_rgb(color2)

	local r = r1 * (1 - cantidad) + r2 * cantidad
	local g = g1 * (1 - cantidad) + g2 * cantidad
	local b = b1 * (1 - cantidad) + b2 * cantidad

	return M.rgb_para_hex(math.floor(r), math.floor(g), math.floor(b))
end

return M
