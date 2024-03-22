local parts = {}

local main_state = require("main_state")

local function load(g)	
	local function append_all(list, list1)
		for i, v in ipairs(list1) do
			table.insert(list, v)
		end
	end
	parts.source = {
		{id = "src-gauge",				path = "../customize/gauge/*" .. "/gauge.png"},
		{id = "src-number-gauge",		path = "../customize/gauge/*" .. "/num.png"},
		{id = "src-dpjam-gauge", 		path = "../customize/gauge/*" .. "/life.png"}
	}
	
	parts.image = {
		{id = "gauge-n1",		src = "src-gauge",			x = 0, y = 0, w = 12, h = 35},
		{id = "gauge-n2",		src = "src-gauge",			x = 12, y = 0, w = 12, h = 35},
		{id = "gauge-n3",		src = "src-gauge",			x = 24, y = 0, w = 12, h = 35},
		{id = "gauge-n4",		src = "src-gauge",			x = 36, y = 0, w = 12, h = 35},
		{id = "gauge-e1",		src = "src-gauge",			x = 0, y = 35, w = 12, h = 35},
		{id = "gauge-e2",		src = "src-gauge",			x = 12, y = 35, w = 12, h = 35},
		{id = "gauge-e3",		src = "src-gauge",			x = 24, y = 35, w = 12, h = 35},
		{id = "gauge-e4",		src = "src-gauge",			x = 36, y = 35, w = 12, h = 35},		
	}

	for i = 1, 243 do
		table.insert(parts.image, {id = "dpjam-" .. i, src = "src-dpjam-gauge", y = i - 1, w = 8, h = 1})
	end
	
	parts.value = {
		
	}

	local dp_gauge = {
		x = 625,
		y = 118,
		w = 17,
		h = 593
	}
	
	parts.gauge = {
		id = "gauge",
		nodes = {"gauge-n1","gauge-n2","gauge-n3","gauge-n4","gauge-e1","gauge-e2","gauge-e3","gauge-e4"},
		parts = g.frame.gauge.scale
	}
	local gauge_percent = 100

	parts.destination = {
		

		{id = -111, draw = function()
			gauge_percent = main_state.gauge()
		end, dst = {time = 0}
		},
		--{id = "dpjam-gauge", filter = 1,dst = {{x = 625, y = 118, w = 17, h = 593}}}
	}	

	for i = 1, dp_gauge.h do
		table.insert(parts.destination, {id = "dpjam-" .. math.ceil(((i / dp_gauge.h) * 243)), filter = 1, draw = function() return i <= gauge_percent * (dp_gauge.h / 100) end, dst = {{x = dp_gauge.x, y = dp_gauge.y + (i - 1) + 42, w = 17, h = 1}}})
	end
	
	return parts	
end

return {
	parts = parts,
	load = load
}