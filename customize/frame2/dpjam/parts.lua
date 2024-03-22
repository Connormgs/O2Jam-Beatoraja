local parts = {}

local function load(g)
	
	parts.source = {
		{id = "src-frame2",	path = "../customize/frame2/dpjam/frame.png"}
		
	}
	
	parts.image = {
		{id = "frame2", src = "src-frame2", x = 0, y = 0, w = 1800, h = 1500}
		
	}
		
	parts.destination = {
		{id = "frame2", filter = 1, stretch = 3, dst = {
			{x = -60, y = -50, w = 2200, h = g.resolution.h, a = g.frame.background.a}
		}}
		
	}
	
	return parts
	
end

return {
	parts = parts,
	load = load
}
