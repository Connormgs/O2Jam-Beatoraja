local parts = {}

local function load(t)
	parts.text = {
		{id = "music-title",	font = "system-font", size = t.frame.songinfo.h, align = 1, ref = 12, overflow = 1},
		{id = "music-genre",	font = "system-font", size = t.frame.songinfo.h, align = 1, ref = 13, overflow = 1},
		{id = "music-artist",	font = "system-font", size = t.frame.songinfo.h, align = 1, ref = 16, overflow = 1},
		{id = "table",			font = "system-font", size = t.frame.songinfo.h, align = 1, ref = 1003, overflow = 1}
	}
	parts.destination = {
		{id = "music-title", dst = {{ x = t.frame.songinfo.x + 750, y = t.frame.songinfo.y + 970, w = t.frame.songinfo.w, h = t.frame.songinfo.h, },{time = 100, a = 255}}},
		
	}			
	return parts	
end

return {
	parts = parts,
	load = load
}