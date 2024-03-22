local parts = {}

local function load(g)
	
	local lane_types = {}
	if		g.type == 1 or g.type == 3	then lane_types = {1, 2, 3, 4, 5, "s"}
	elseif	g.type == 0 or g.type == 2	then lane_types = {1, 2, 3, 4, 5, 6, 7, "s"}
	elseif	g.type == 4					then lane_types = {1, 2, 3, 4, 5, 6, 7, 8, 9}
	end
	
	local function is_dp() return g.type == 2 or g.type == 3 end
	
	parts.source = {
		{id = "src-line",		path = "../customize/lane/*" .. "/line.png"},
		{id = "src-outline",	path = "../customize/lane/*" .. "/outline.png"},
		{id = "src-lane-s",		path = "../customize/lane/*" .. "/s.png"},
		{id = "src-lane-w",		path = "../customize/lane/*" .. "/w.png"},
		{id = "src-lane-b",		path = "../customize/lane/*" .. "/b.png"},
	}
	parts.image = {
		
	}
	parts.destination = {}
	
	table.insert(parts.destination, {id = "lane-outline", loop = 500, dst = {
		{time = 200, x = g.lane.outline.x[1][1], y = g.lanes.y[1] + g.lane.outline.px, w = g.lane.outline.px, h = 0, a = g.lane.outline.a, acc = 2},
		{time = 500, h = g.lanes.h[1] - g.lane.outline.px}
	}})
	table.insert(parts.destination, {id = "lane-outline", loop = 500, dst = {
		{time = 200, x = g.lane.outline.x[1][2], y = g.lanes.y[1] + g.lane.outline.px, w = g.lane.outline.px, h = 0, a = g.lane.outline.a, acc = 2},
		{time = 500, h = g.lanes.h[1] - g.lane.outline.px}
	}})
	table.insert(parts.destination, {id = "lane-outline", loop = 200, dst = {
		{time = 0, x = g.lane.outline.x[1][1], y = g.lanes.y[1], w = g.lanes.w[1], h = g.lane.outline.px, a = 0},
		{time = 200, a = g.lane.outline.a}
	}})
	if is_dp() then
		table.insert(parts.destination, {id = "lane-outline", loop = 500, dst = {
			{time = 200, x = g.lane.outline.x[2][1], y = g.lanes.y[2] + g.lane.outline.px, w = g.lane.outline.px, h = 0, a = g.lane.outline.a, acc = 2},
			{time = 500, h = g.lanes.h[1] - g.lane.outline.px}
		}})
		table.insert(parts.destination, {id = "lane-outline", loop = 500, dst = {
			{time = 200, x = g.lane.outline.x[2][2], y = g.lanes.y[2] + g.lane.outline.px, w = g.lane.outline.px, h = 0, a = g.lane.outline.a, acc = 2},
			{time = 500, h = g.lanes.h[1] - g.lane.outline.px}
		}})
		table.insert(parts.destination, {id = "lane-outline", loop = 200, dst = {
			{time = 0, x = g.lane.outline.x[2][1], y = g.lanes.y[2], w = g.lanes.w[2], h = g.lane.outline.px, a = 0},
			{time = 200, a = g.lane.outline.a}
		}})
	end
	
	for i, v in ipairs(lane_types) do
		if v == "s" then
			table.insert(parts.destination, {id = "lane-s", loop = 1000,		dst = {
				{time = 600, x = g.lane.lane.x[1][i], y = g.lanes.y[1] + g.lane.outline.px, w = g.lane.lane.w[1][i], h = g.lanes.h[1], a = 0, acc = 2},
				{time = 1000, a = g.lane.lane.a}
			}})
			if is_dp() then
				table.insert(parts.destination, {id = "lane-s", loop = 1000,		dst = {
					{time = 600, x = g.lane.lane.x[2][i], y = g.lanes.y[2] + g.lane.outline.px, w = g.lane.lane.w[2][i], h = g.lanes.h[2], a = 0, acc = 2},
					{time = 1000, a = g.lane.lane.a}
				}})
			end
		else
			table.insert(parts.destination, {id = "lane-" .. i, loop = 1000,	dst = {
				{time = 600, x = g.lane.lane.x[1][i], y = g.lanes.y[1] + g.lane.outline.px, w = g.lane.lane.w[1][i], h = g.lanes.h[1], a = 0, acc = 2},
				{time = 1000, a = g.lane.lane.a}
			}})
			if is_dp() then
				table.insert(parts.destination, {id = "lane-" .. i, loop = 1000,	dst = {
					{time = 600, x = g.lane.lane.x[2][i], y = g.lanes.y[2] + g.lane.outline.px, w = g.lane.lane.w[2][i], h = g.lanes.h[2], a = 0, acc = 2},
					{time = 1000, a = g.lane.lane.a}
				}})
			end
		end
		if i ~= 1 then
			table.insert(parts.destination, {id = "lane-line", loop = 1000, dst = {
				{time = 400, x = g.lane.line.x[1][i], y = g.lanes.y[1] + g.lane.outline.px, w = g.lane.line.px, h = 0, a = g.lane.line.a, acc = 2},
				{time = 1000, h = g.lanes.h[1] - g.lane.outline.px}
			}})
			if is_dp() then
				table.insert(parts.destination, {id = "lane-line", loop = 1000, dst = {
					{time = 400, x = g.lane.line.x[2][i], y = g.lanes.y[2] + g.lane.outline.px, w = g.lane.line.px, h = 0, a = g.lane.line.a, acc = 2},
					{time = 1000, h = g.lanes.h[2] - g.lane.outline.px}
				}})
			end
		end
	end
	
	return parts	
	
end

return {
	parts = parts,
	load = load
}