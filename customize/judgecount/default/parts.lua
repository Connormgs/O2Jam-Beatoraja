local parts = {}

local function load(g)

	parts.source = {{id = "src-count", path = "../customize/judgecount/*".. "/parts.png"}}
	
	parts.image = {{id = "judgecount-s", src = "src-count", x = 156, y = 0, w = 39, h = 131}}
	
	parts.value = {
		{id = "count-cb",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 425},
		{id = "count-kp",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 420},
		{id = "count-pr",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 114},
		{id = "count-bd",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 113},
		{id = "count-gd",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 112},
		{id = "count-gr",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 111},
		{id = "count-pg",		src = "src-count", x = 0, y = 0, w = 143, h = 17, divx = 11, digit = 4, ref = 110},
		{id = "count-kp-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 421},
		{id = "count-pr-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 418},
		{id = "count-bd-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 416},
		{id = "count-gd-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 414},
		{id = "count-gr-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 412},
		{id = "count-pg-fast",	src = "src-count", x = 0, y = 17, w = 143, h = 17, divx = 11, digit = 4, ref = 410},
		{id = "count-kp-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 422},
		{id = "count-pr-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 419},
		{id = "count-bd-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 417},
		{id = "count-gd-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 415},
		{id = "count-gr-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 413},
		{id = "count-pg-slow",	src = "src-count", x = 0, y = 34, w = 143, h = 17, divx = 11, digit = 4, ref = 411}
	}
	parts.destination = {
		
		
		
		{id = "count-pr",		dst = {{x = g.frame.judgecount.x + 325,	y = g.frame.judgecount.y - 195, w = 13, h = 17}}},
		{id = "count-bd",		dst = {{x = g.frame.judgecount.x + 145,	y = g.frame.judgecount.y - 195, w = 13, h = 17}}},
		
		{id = "count-gr",		dst = {{x = g.frame.judgecount.x + 325,	y = g.frame.judgecount.y - 170, w = 13, h = 17}}},
		{id = "count-pg",		dst = {{x = g.frame.judgecount.x + 145,	y = g.frame.judgecount.y - 170, w = 13, h = 17}}},
	
	}
	
	return parts	
	
end

return {
	parts = parts,
	load = load
}