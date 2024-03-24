local parts = {}

local function judge_check(tbl)
	local t = {}
	if type(tbl) == "table" then
		for k, v in pairs(tbl) do
			t[k] = v
		end
		if type(t.JUDGEF_WIDTH) ~= "number"		then t.JUDGEF_WIDTH = 180	end
		if type(t.JUDGEF_HEIGHT) ~= "number"	then t.JUDGEF_HEIGHT = 50	end
		if type(t.DIVY_F_PG) ~= "number"		then t.DIVY_F_PG = 1		end
		if type(t.DIVY_F_GR) ~= "number"		then t.DIVY_F_GR = 1		end
		if type(t.DIVY_F_GD) ~= "number"		then t.DIVY_F_GD = 1		end
		if type(t.DIVY_F_BD) ~= "number"		then t.DIVY_F_BD = 1		end
		if type(t.DIVY_F_PR) ~= "number"		then t.DIVY_F_PR = 1		end
		if type(t.JUDGEN_WIDTH) ~= "number"		then t.JUDGEN_WIDTH = 36	end
		if type(t.JUDGEN_HEIGHT) ~= "number"	then t.JUDGEN_HEIGHT = 50	end
		if type(t.DIVY_N_PG) ~= "number"		then t.DIVY_N_PG = 1		end
		if type(t.DIVY_N_GR) ~= "number"		then t.DIVY_N_GR = 1		end
		if type(t.DIVY_N_GD) ~= "number"		then t.DIVY_N_GD = 1		end
		if type(t.JUDGE_SPACE) ~= "number"		then t.JUDGE_SPACE = 18		end
		if type(t.JUDGE_FORMAT) ~= "number"		then t.JUDGE_FORMAT = 1		end
		if type(t.JUDGE_ANIMATION_CYCLE_PG) ~= "number" then t.JUDGE_ANIMATION_CYCLE_PG = 125 end
		if type(t.JUDGE_ANIMATION_CYCLE_GR) ~= "number" then t.JUDGE_ANIMATION_CYCLE_GR = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_GD) ~= "number" then t.JUDGE_ANIMATION_CYCLE_GD = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_BD) ~= "number" then t.JUDGE_ANIMATION_CYCLE_BD = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_PR) ~= "number" then t.JUDGE_ANIMATION_CYCLE_PR = 75 end
		print(skin_msg .. "judge.lua ロード成功")
	else
		print(skin_msg .. "judge.lua 旧型式チェック")
		if type(JUDGEF_WIDTH) == "number"	then t.JUDGEF_WIDTH = JUDGEF_WIDTH end
		if type(JUDGEF_HEIGHT) == "number"	then t.JUDGEF_HEIGHT = JUDGEF_HEIGHT end
		if type(DIVY_F_PG) == "number"		then t.DIVY_F_PG = DIVY_F_PG end
		if type(DIVY_F_GR) == "number"		then t.DIVY_F_GR = DIVY_F_GR end
		if type(DIVY_F_GD) == "number"		then t.DIVY_F_GD = DIVY_F_GD end
		if type(DIVY_F_BD) == "number"		then t.DIVY_F_BD = DIVY_F_BD end
		if type(DIVY_F_PR) == "number"		then t.DIVY_F_PR = DIVY_F_PR end
		if type(JUDGEN_WIDTH) == "number"	then t.JUDGEN_WIDTH = JUDGEN_WIDTH end
		if type(JUDGEN_HEIGHT) == "number"	then t.JUDGEN_HEIGHT = JUDGEN_HEIGHT end
		if type(DIVY_N_PG) == "number"		then t.DIVY_N_PG = DIVY_N_PG end
		if type(DIVY_N_GR) == "number"		then t.DIVY_N_GR = DIVY_N_GR end
		if type(DIVY_N_GD) == "number"		then t.DIVY_N_GD = DIVY_N_GD end
		if type(JUDGE_SPACE) == "number"	then t.JUDGE_SPACE = JUDGE_SPACE end
		if type(JUDGE_FORMAT) == "number"	then t.JUDGE_FORMAT = JUDGE_FORMAT end
		if type(JUDGE_ANIMATION_CYCLE_PG) == "number" then t.JUDGE_ANIMATION_CYCLE_PG = JUDGE_ANIMATION_CYCLE_PG end
		if type(JUDGE_ANIMATION_CYCLE_GR) == "number" then t.JUDGE_ANIMATION_CYCLE_GR = JUDGE_ANIMATION_CYCLE_GR end
		if type(JUDGE_ANIMATION_CYCLE_GD) == "number" then t.JUDGE_ANIMATION_CYCLE_GD = JUDGE_ANIMATION_CYCLE_GD end
		if type(JUDGE_ANIMATION_CYCLE_BD) == "number" then t.JUDGE_ANIMATION_CYCLE_BD = JUDGE_ANIMATION_CYCLE_BD end
		if type(JUDGE_ANIMATION_CYCLE_PR) == "number" then t.JUDGE_ANIMATION_CYCLE_PR = JUDGE_ANIMATION_CYCLE_PR end
		if type(t.JUDGEF_WIDTH) ~= "number"		then t.JUDGEF_WIDTH = 180	end
		if type(t.JUDGEF_HEIGHT) ~= "number"	then t.JUDGEF_HEIGHT = 50	end
		if type(t.DIVY_F_PG) ~= "number"		then t.DIVY_F_PG = 1		end
		if type(t.DIVY_F_GR) ~= "number"		then t.DIVY_F_GR = 1		end
		if type(t.DIVY_F_GD) ~= "number"		then t.DIVY_F_GD = 1		end
		if type(t.DIVY_F_BD) ~= "number"		then t.DIVY_F_BD = 1		end
		if type(t.DIVY_F_PR) ~= "number"		then t.DIVY_F_PR = 1		end
		if type(t.JUDGEN_WIDTH) ~= "number"		then t.JUDGEN_WIDTH = 36	end
		if type(t.JUDGEN_HEIGHT) ~= "number"	then t.JUDGEN_HEIGHT = 50	end
		if type(t.DIVY_N_PG) ~= "number"		then t.DIVY_N_PG = 1		end
		if type(t.DIVY_N_GR) ~= "number"		then t.DIVY_N_GR = 1		end
		if type(t.DIVY_N_GD) ~= "number"		then t.DIVY_N_GD = 1		end
		if type(t.JUDGE_SPACE) ~= "number"		then t.JUDGE_SPACE = 18		end
		if type(t.JUDGE_FORMAT) ~= "number"		then t.JUDGE_FORMAT = 1		end
		if type(t.JUDGE_ANIMATION_CYCLE_PG) ~= "number" then t.JUDGE_ANIMATION_CYCLE_PG = 125 end
		if type(t.JUDGE_ANIMATION_CYCLE_GR) ~= "number" then t.JUDGE_ANIMATION_CYCLE_GR = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_GD) ~= "number" then t.JUDGE_ANIMATION_CYCLE_GD = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_BD) ~= "number" then t.JUDGE_ANIMATION_CYCLE_BD = 75 end
		if type(t.JUDGE_ANIMATION_CYCLE_PR) ~= "number" then t.JUDGE_ANIMATION_CYCLE_PR = 75 end
		print(skin_msg .. "judge.lua チェック完了")
	end
	return t
end

local judge_def		= op_count()
local judge_ox43	= op_count()
local judge_ox169	= op_count()
local judge_mc		= op_count()
local judge_tm		= op_count()
local judge_wmw		= op_count()
local judge_wmac	= op_count()
local j3row_off		= op_count()
local j3row_on		= op_count()
local ghost_off		= op_count()
local ghost_best	= op_count()
local ghost_tgt		= op_count()
local jdetail_off	= op_count()
local jdetail_fs	= op_count()
local jdetail_ms	= op_count()

parts.property = {
	{name = "使用する判定文字の設定 Judge Setting", item = {
		{name = "DEFAULT",			op = judge_def},
		{name = "OADX4:3",			op = judge_ox43},
		{name = "OADX16:9",			op = judge_ox169},
		{name = "ModernChic",		op = judge_mc},
		{name = "TYPE-M",			op = judge_tm},
		{name = "W-MIX HD WIDE",	op = judge_wmw},
		{name = "W-MIX HD AC",		op = judge_wmac}
	}, def = "DEFAULT"},
	
	{name = "3列判定を使用する(DEFAULT判定文字限定) 3row Judge", item = {
		{name = "OFF",	op = j3row_off},
		{name = "ON",	op = j3row_on}
	}, def = "OFF"},
	
	{name = "ゴーストスコアを表示する Ghost", item = {
		{name = "OFF",		op = ghost_off},
		{name = "HISCORE",	op = ghost_best},
		{name = "TARGET",	op = ghost_tgt}
	}, def = "TARGET"},
	
	{name = "判定の詳細を表示する(速/遅) Judge Detail", item = {
		{name = "OFF",			op = jdetail_off},
		{name = "FAST/SLOW",	op = jdetail_fs},
		{name = "+-ms",			op = jdetail_ms}
	}, def = "ON"}
}

parts.filepath = {
	{name = "判定文字 Judge",									path = "customize/judge/*",					def = "default2"},
	{name = "OADX+判定文字の画像 OADX+ Judge",					path = "customize/oadx+/judge/*.png",		def = "off.png"},
	{name = "ModernChic判定文字の画像 ModernChic Judge",		path = "customize/ModernChic/judge/*.png",	def = "off.png"},
	{name = "TYPE-M判定文字の画像 TYPE-M Judge",				path = "customize/TYPE-M/judge/*.png",		def = "off.png"},
	{name = "W-mix HD WIDE判定文字の画像 WMIX_HD_WIDE Judge",	path = "customize/WMIX_HD/judge/*.png",		def = "off.png"},
	{name = "W-mix HD AC判定文字の画像 WMIX_HD_AC Judge",		path = "customize/WMIX_HD/judge/ac/*.png",	def = "off.png"},
	{name = "ゴーストスコア Ghost",								path = "customize/ghost/*",					def = "default"},
	{name = "判定詳細 Judge Detail",							path = "customize/judgedetail/*",			def = "default"}
}

parts.offset = {
}

local function load(g)

	local judge		= file_load(skin_config.get_path("customize/judge/*") .. "/judge.lua")
	local jdetail	= file_load(skin_config.get_path("customize/judgedetail/*") .. "/judgedetail.lua")
	local ghost		= file_load(skin_config.get_path("customize/ghost/*") .. "/ghost.lua")
	judge = judge_check(judge)
	
	-- 判定文字のサイズ
	local judge_f_width		= judge.JUDGEF_WIDTH
	local judge_f_height	= judge.JUDGEF_HEIGHT
	local judge_n_width		= judge.JUDGEN_WIDTH
	local judge_n_height	= judge.JUDGEN_HEIGHT
	
	-- 判定数字の表示位置
	local judge_n_x = judge_f_width + judge.JUDGE_SPACE
	local judge_n_y = 999
	if g.overwrite_judge_f_width	then judge_f_width	= g.overwrite_judge_f_width end
	if g.overwrite_judge_f_height	then judge_f_height	= g.overwrite_judge_f_height end
	if g.overwrite_judge_n_width	then judge_n_width	= g.overwrite_judge_n_width end
	if g.overwrite_judge_n_height	then judge_n_height	= g.overwrite_judge_n_height end
	
	-- 判定文字の表示位置
	local judge_f_x = g.lanes_center_x - ((judge_f_width + judge.JUDGE_SPACE) / 2)
	local judge_f_y = g.judge_y
	
	local j_scale_time		= 100
	local jf_scale_width	= 0
	local jf_scale_height	= 0
	local jf_scale_opacity	= 255
	local jn_scale_width	= 0
	local jn_scale_height	= 0
	local jn_scale_opacity	= 255
	
	if judge.JUDGE_SCALE_ANIMATION_TIME		then j_scale_time		= judge.JUDGE_SCALE_ANIMATION_TIME end
	if judge.JUDGEF_SCALE_ANIMATION_WIDTH	then jf_scale_width		= judge.JUDGEF_SCALE_ANIMATION_WIDTH end
	if judge.JUDGEF_SCALE_ANIMATION_HEIGHT	then jf_scale_height	= judge.JUDGEF_SCALE_ANIMATION_HEIGHT end
	if judge.JUDGEF_SCALE_ANIMATION_OPACITY	then jf_scale_opacity	= judge.JUDGEF_SCALE_ANIMATION_OPACITY end
	if judge.JUDGEN_SCALE_ANIMATION_WIDTH	then jn_scale_width		= judge.JUDGEN_SCALE_ANIMATION_WIDTH end
	if judge.JUDGEN_SCALE_ANIMATION_HEIGHT	then jn_scale_height	= judge.JUDGEN_SCALE_ANIMATION_HEIGHT end
	if judge.JUDGEN_SCALE_ANIMATION_OPACITY	then jn_scale_opacity	= judge.JUDGEN_SCALE_ANIMATION_OPACITY end
	
	-- OADX+4:3
	if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox43 then
		judge_f_x		= g.lanes_center_x - (90 * g.judge_magnification)
		judge_f_width	= 174 * g.judge_magnification
		judge_f_height	= 79 * g.judge_magnification
		judge_n_width	= 38 * g.judge_magnification
		judge_n_height	= 79 * g.judge_magnification
		judge_n_x		= 181 * g.judge_magnification
	-- OADX+16:9
	elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox169 then
		judge_f_x		= g.lanes_center_x - (120 * g.judge_magnification)
		judge_f_width	= 231 * g.judge_magnification
		judge_f_height	= 79 * g.judge_magnification
		judge_n_width	= 51 * g.judge_magnification
		judge_n_height	= 79 * g.judge_magnification
		judge_n_x		= 240 * g.judge_magnification
	-- ModernChic
	elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_mc then
		judge_f_x		= g.lanes_center_x - (119 * g.judge_magnification)
		judge_f_width	= 227 * g.judge_magnification
		judge_f_height	= 84 * g.judge_magnification
		judge_n_width	= 55 * g.judge_magnification
		judge_n_height	= 84 * g.judge_magnification
		judge_n_x		= 237 * g.judge_magnification
	-- TYPE-M
	elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_tm then
		judge_f_x		= g.lanes_center_x - (135 * g.judge_magnification)
		judge_f_width	= 271 * g.judge_magnification
		judge_f_height	= 124 * g.judge_magnification
		judge_n_width	= 96 * g.judge_magnification
		judge_n_height	= 124 * g.judge_magnification
		judge_n_x		= 353 * g.judge_magnification
	-- W-MIX WIDE
	elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmw then
		judge_f_x		= g.lanes_center_x - (108 * g.judge_magnification)
		judge_f_width	= 245 * g.judge_magnification
		judge_f_height	= 75 * g.judge_magnification
		judge_n_width	= 44 * g.judge_magnification
		judge_n_height	= 75 * g.judge_magnification
		judge_n_x		= 208 * g.judge_magnification
	-- W-MIX AC
	elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmac then
		judge_f_x		= g.lanes_center_x - (127 * g.judge_magnification)
		judge_f_width	= 245 * g.judge_magnification
		judge_f_height	= 90 * g.judge_magnification
		judge_n_width	= 59 * g.judge_magnification
		judge_n_height	= 90 * g.judge_magnification
		judge_n_x		= 255 * g.judge_magnification
	end
	
	-- 判定形式
	local judge_height = judge_f_height
	local judge_shift = true
	
	if judge_f_height < judge_n_height then judge_height = judge_n_height end
	
	if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def then
		if judge.JUDGE_FORMAT == 2 then
			judge_shift	= false
			judge_f_x		= g.lanes_center_x - (judge_f_width / 2)
			judge_n_x		= judge_f_width / 2
			judge_n_y		= judge_f_height + judge.JUDGE_SPACE
			judge_height	= judge_f_height + judge_n_height + judge.JUDGE_SPACE
			
		elseif judge.JUDGE_FORMAT == 3 then
			judge_shift	= false
			judge_f_x		= g.lanes_center_x - (judge_f_width / 2)
			judge_n_x		= judge_f_width / 2
			judge_f_y		= judge_f_y + judge_n_height + judge.JUDGE_SPACE
			judge_n_y		= (judge_n_height + judge.JUDGE_SPACE) * -1
			judge_height	= judge_f_height + judge_n_height + judge.JUDGE_SPACE
		end
		-- 9KEYSで3列判定ONの時強制的に2行表示にする
		if SKINTYPE == 4
		and skin_config.option["3列判定を使用する(DEFAULT判定文字限定) 3row Judge"] == j3row_on
		and judge.JUDGE_FORMAT == 1 then
			judge_shift	= false
			judge_f_x		= g.lanes_center_x - (judge_f_width / 2)
			judge_f_y		= judge_f_y + judge_n_height + judge.JUDGE_SPACE
			judge_n_x		= judge_f_width / 2
			judge_n_y		= (judge_n_height + judge.JUDGE_SPACE) * -1
			judge_height	= judge_f_height + judge_n_height + judge.JUDGE_SPACE
		end
	end
	
	
	local judgedetail_x			= g.lanes_center_x - 108
	local judgedetail_y			= g.judge_y + judge_height + 25
	local judgedetail_width		= jdetail.JUDGE_DETAIL_WIDTH * 12
	local judgedetail_height	= jdetail.JUDGE_DETAIL_HEIGHT
	if g.overwrite_judgedetail_x	then judgedetail_x	= g.overwrite_judgedetail_x end
	if g.overwrite_judgedetail_y	then judgedetail_y	= g.overwrite_judgedetail_y end
	
	
	
	local ghost_x		= g.lanes_center_x + 36
	local ghost_y		= g.judge_y + judge_height + 25
	local ghost_width	= ghost.GHOST_WIDTH * 12
	local ghost_height	= ghost.GHOST_HEIGHT
	if g.overwrite_ghost_x then ghost_x = g.overwrite_ghost_x end
	if g.overwrite_ghost_y then ghost_y = g.overwrite_ghost_y end
	
	-- DP
	local judge_f_x2		= 0
	local judgedetail_x2	= 0
	local ghost_x2			= 0
	if is_doubleplay() then
		judge_f_x2 = g.lanes_center_x2 - ((judge_f_width + judge.JUDGE_SPACE) / 2)
		if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox43 then
			judge_f_x2 = g.lanes_center_x2 - (90 * g.judge_magnification)
		-- OADX+16:9
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox169 then
			judge_f_x2 = g.lanes_center_x2 - (120 * g.judge_magnification)
		-- ModernChic
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_mc then
			judge_f_x2 = g.lanes_center_x2 - (119 * g.judge_magnification)
		-- TYPE-M
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_tm then
			judge_f_x2 = g.lanes_center_x2 - (135 * g.judge_magnification)
		-- W-MIX WIDE
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmw then
			judge_f_x2 = g.lanes_center_x2 - (108 * g.judge_magnification)
		-- W-MIX AC
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmac then
			judge_f_x2 = g.lanes_center_x2 - (127 * g.judge_magnification)
		end
		
		if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def then
			if judge.JUDGE_FORMAT == 2 then
				judge_f_x2 = g.lanes_center_x2 - (judge_f_width / 2)
				
			elseif judge.JUDGE_FORMAT == 3 then
				judge_f_x2 = g.lanes_center_x2 - (judge_f_width / 2)
			end
		end
		
		judgedetail_x2	= g.lanes_center_x2 - 108
		ghost_x2		= g.lanes_center_x2 + 36
	end
	
	
	parts.source = {
		{id = "src-pg",				path = "customize/judge/*" .. "/F_PG.png"},
		{id = "src-gr",				path = "customize/judge/*" .. "/F_GR.png"},
		{id = "src-gd",				path = "customize/judge/*" .. "/F_GD.png"},
		{id = "src-bd",				path = "customize/judge/*" .. "/F_BD.png"},
		{id = "src-pr",				path = "customize/judge/*" .. "/F_PR.png"},
		{id = "src-pgn",			path = "customize/judge/*" .. "/N_PG.png"},
		{id = "src-grn",			path = "customize/judge/*" .. "/N_GR.png"},
		{id = "src-gdn",			path = "customize/judge/*" .. "/N_GD.png"},

	}
	
	parts.image = {}
	
	parts.value = {}
		if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def then
			parts.image = {
				{id = "judgef-pg", src = "src-pg", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_PG, cycle = judge.JUDGE_ANIMATION_CYCLE_PG},
				{id = "judgef-gr", src = "src-gr", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_GR, cycle = judge.JUDGE_ANIMATION_CYCLE_GR},
				{id = "judgef-gd", src = "src-gd", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_GD, cycle = judge.JUDGE_ANIMATION_CYCLE_GD},
				{id = "judgef-bd", src = "src-bd", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_BD, cycle = judge.JUDGE_ANIMATION_CYCLE_BD},
				{id = "judgef-pr", src = "src-pr", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_PR, cycle = judge.JUDGE_ANIMATION_CYCLE_PR},
				{id = "judgef-ms", src = "src-pr", x = 0, y = 0, w = -1, h = -1, divy = judge.DIVY_F_PR, cycle = judge.JUDGE_ANIMATION_CYCLE_PR}
			}
			parts.value = {
				{id = "judgen-pg", src = "src-pgn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_PG, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_PG},
				{id = "judgen-gr", src = "src-grn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_GR, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_GR},
				{id = "judgen-gd", src = "src-gdn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_GD, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_GD},
				{id = "judgen-bd", src = "src-gdn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_GD, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_GD},
				{id = "judgen-pr", src = "src-gdn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_GD, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_GD},
				{id = "judgen-ms", src = "src-gdn",	x = 0, y = 0, w = -1, h = -1, divx = 10, divy = judge.DIVY_N_GD, digit = 6, ref = 75, cycle = judge.JUDGE_ANIMATION_CYCLE_GD}
			}
			
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox43
		or  skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_ox169 then
			parts.image = {
				{id = "oadx+-judgef-pg", src = "src-oadx+judge", x = 0, y = 0, w = 77, h = 105, divy = 3, cycle = 125},
				{id = "oadx+-judgef-gr", src = "src-oadx+judge", x = 0, y = 105, w = 77, h = 70, divy = 2, cycle = 75},
				{id = "oadx+-judgef-gd", src = "src-oadx+judge", x = 247, y = 0, w = 77, h = 70, divy = 2, cycle = 75},
				{id = "oadx+-judgef-bd", src = "src-oadx+judge", x = 324, y = 0, w = 77, h = 70, divy = 2, cycle = 75},
				{id = "oadx+-judgef-pr", src = "src-oadx+judge", x = 401, y = 0, w = 77, h = 70, divy = 2, cycle = 75},
				{id = "oadx+-judgef-ms", src = "src-oadx+judge", x = 401, y = 0, w = 77, h = 70, divy = 2, cycle = 75}
			}
			parts.value = {
				{id = "oadx+-judgen-pg", src = "src-oadx+judge", x = 77, y = 0, w = 170, h = 105, divx = 10, divy = 3, digit = 6, ref = 75, cycle = 125},
				{id = "oadx+-judgen-gr", src = "src-oadx+judge", x = 77, y = 105, w = 170, h = 70, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 75},
				{id = "oadx+-judgen-gd", src = "src-oadx+judge", x = 77, y = 105, w = 170, h = 70, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 75},
				{id = "oadx+-judgen-bd", src = "src-oadx+judge", x = 77, y = 105, w = 170, h = 70, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 75},
				{id = "oadx+-judgen-pr", src = "src-oadx+judge", x = 77, y = 105, w = 170, h = 70, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 75},
				{id = "oadx+-judgen-ms", src = "src-oadx+judge", x = 77, y = 105, w = 170, h = 70, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 75}
			}
			
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_mc then
			parts.image = {
				{id = "mc-judgef-pg", src = "src-mcjudge", x = 0, y = 0, w = 227, h = 252, divy = 3, cycle = 120},
				{id = "mc-judgef-gr", src = "src-mcjudge", x = 0, y = 252, w = 227, h = 168, divy = 2, cycle = 80},
				{id = "mc-judgef-gd", src = "src-mcjudge", x = 0, y = 420, w = 227, h = 168, divy = 2, cycle = 80},
				{id = "mc-judgef-bd", src = "src-mcjudge", x = 227, y = 420, w = 227, h = 168, divy = 2, cycle = 80},
				{id = "mc-judgef-pr", src = "src-mcjudge", x = 454, y = 420, w = 227, h = 168, divy = 2, cycle = 80},
				{id = "mc-judgef-ms", src = "src-mcjudge", x = 454, y = 420, w = 227, h = 168, divy = 2, cycle = 80}
			}
			parts.value = {
				{id = "mc-judgen-pg", src = "src-mcjudge", x = 227, y = 0, w = 550, h = 252, divx = 10, divy = 3, digit = 6, ref = 75, cycle = 120},
				{id = "mc-judgen-gr", src = "src-mcjudge", x = 227, y = 252, w = 550, h = 168, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "mc-judgen-gd", src = "src-mcjudge", x = 227, y = 252, w = 550, h = 168, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "mc-judgen-bd", src = "src-mcjudge", x = 227, y = 252, w = 550, h = 168, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "mc-judgen-pr", src = "src-mcjudge", x = 227, y = 252, w = 550, h = 168, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "mc-judgen-ms", src = "src-mcjudge", x = 227, y = 252, w = 550, h = 168, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80}
			}
			
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_tm then
			parts.image = {
				{id = "tm-judgef-pg", src = "src-tmjudge", x = 0, y = 0, w = 271, h = 744, divy = 6, cycle = 100},
				{id = "tm-judgef-gr", src = "src-tmjudge", x = 0, y = 744, w = 271, h = 248, divy = 2, cycle = 60},
				{id = "tm-judgef-gd", src = "src-tmjudge", x = -22, y = 992, w = 271 * 2, h = 124, divx = 2, cycle = 60},
				{id = "tm-judgef-bd", src = "src-tmjudge", x = -44, y = 1116, w = 271 * 2, h = 124, divx = 2, cycle = 60},
				{id = "tm-judgef-pr", src = "src-tmjudge", x = -22, y = 1240, w = 271 * 2, h = 124, divx = 2, cycle = 60},
				{id = "tm-judgef-ms", src = "src-tmjudge", x = -34, y = 1364, w = 271 * 2, h = 124, divx = 2, cycle = 60}
			}
			parts.value = {
				{id = "tm-judgen-pg", src = "src-tmjudge", x = 271, y = 0, w = 960, h = 744, divx = 10, divy = 6, digit = 6, ref = 75, space = -38, cycle = 100},
				{id = "tm-judgen-gr", src = "src-tmjudge", x = 271, y = 744, w = 960, h = 124 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -38, cycle = 60},
				{id = "tm-judgen-gd", src = "src-tmjudge", x = 271, y = 744, w = 960, h = 124 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -38, cycle = 60},
				{id = "tm-judgen-bd", src = "src-tmjudge", x = 271, y = 744, w = 960, h = 208 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -38, cycle = 60},
				{id = "tm-judgen-pr", src = "src-tmjudge", x = 271, y = 744, w = 960, h = 208 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -38, cycle = 60},
				{id = "tm-judgen-ms", src = "src-tmjudge", x = 271, y = 744, w = 960, h = 208 * 2, divx = 10, divy = 2, digit = 6, ref = 75, space = -38, cycle = 60}
			}
			
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmw then
			parts.image = {
				{id = "wm-judgef-pg", src = "src-wmjudge", x = 0, y = 13, w = 245, h = 225, divy = 3, cycle = 100},
				{id = "wm-judgef-gr", src = "src-wmjudge", x = 0, y = 238, w = 245, h = 150, divy = 2, cycle = 80},
				{id = "wm-judgef-gd", src = "src-wmjudge", x = 0, y = 388, w = 245, h = 150, divy = 2, cycle = 80},
				{id = "wm-judgef-bd", src = "src-wmjudge", x = 245, y = 388, w = 245, h = 150, divy = 2, cycle = 80},
				{id = "wm-judgef-pr", src = "src-wmjudge", x = 490, y = 388, w = 245, h = 150, divy = 2, cycle = 80},
				{id = "wm-judgef-ms", src = "src-wmjudge", x = 490, y = 388, w = 245, h = 150, divy = 2, cycle = 80}
			}
			parts.value = {
				{id = "wm-judgen-pg", src = "src-wmjudge", x = 247, y = 13, w = 440, h = 225, divx = 10, divy = 3, digit = 6, ref = 75, cycle = 100},
				{id = "wm-judgen-gr", src = "src-wmjudge", x = 247, y = 238, w = 440, h = 150, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wm-judgen-gd", src = "src-wmjudge", x = 247, y = 238, w = 440, h = 150, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wm-judgen-bd", src = "src-wmjudge", x = 247, y = 238, w = 440, h = 150, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wm-judgen-pr", src = "src-wmjudge", x = 247, y = 238, w = 440, h = 150, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wm-judgen-ms", src = "src-wmjudge", x = 247, y = 238, w = 440, h = 150, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80}
			}
			
		elseif skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_wmac then
			parts.image = {
				{id = "wmac-judgef-pg", src = "src-wmacjudge", x = 0, y = 0, w = 153, h = 336, divy = 6, cycle = 100},
				{id = "wmac-judgef-gr", src = "src-wmacjudge", x = 0, y = 337, w = 306, h = 56, divx = 2, cycle = 80},
				{id = "wmac-judgef-gd", src = "src-wmacjudge", x = 0, y = 394, w = 306, h = 56, divx = 2, cycle = 80},
				{id = "wmac-judgef-bd", src = "src-wmacjudge", x = 0, y = 451, w = 306, h = 56, divx = 2, cycle = 80},
				{id = "wmac-judgef-pr", src = "src-wmacjudge", x = 0, y = 508, w = 306, h = 56, divx = 2, cycle = 80},
				{id = "wmac-judgef-ms", src = "src-wmacjudge", x = 0, y = 508, w = 306, h = 56, divx = 2, cycle = 80}
			}
			parts.value = {
				{id = "wmac-judgen-pg", src = "src-wmacjudge", x = 154, y = 0, w = 370, h = 336, divx = 10, divy = 6, digit = 6, ref = 75, cycle = 100},
				{id = "wmac-judgen-gr", src = "src-wmacjudge", x = 0, y = 565, w = 370, h = 112, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wmac-judgen-gd", src = "src-wmacjudge", x = 0, y = 565, w = 370, h = 112, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wmac-judgen-bd", src = "src-wmacjudge", x = 0, y = 565, w = 370, h = 112, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wmac-judgen-pr", src = "src-wmacjudge", x = 0, y = 565, w = 370, h = 112, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80},
				{id = "wmac-judgen-ms", src = "src-wmacjudge", x = 0, y = 565, w = 370, h = 112, divx = 10, divy = 2, digit = 6, ref = 75, cycle = 80}
			}
		end
		
		table.insert(parts.value, {id = "ghost-target", src = "src-ghost", x = 0, y = 0, w = ghost_width, h = ghost_height * 2, divx = 12, divy = 2, digit = 6, align = 1, ref = 153})
		table.insert(parts.value, {id = "ghost-mybest", src = "src-ghost", x = 0, y = 0, w = ghost_width, h = ghost_height * 2, divx = 12, divy = 2, digit = 6, align = 1, ref = 152})
		table.insert(parts.image, {id = "judge-fast", src = "src-judgedetail", x = 0, y = judgedetail_height * 2, w = judgedetail_width, h = judgedetail_height})
		table.insert(parts.image, {id = "judge-slow", src = "src-judgedetail", x = 0, y = judgedetail_height * 3, w = judgedetail_width, h = judgedetail_height})
		table.insert(parts.value, {id = "judgedetail_ms", src = "src-judgedetail", x = 0, y = 0, w = judgedetail_width, h = judgedetail_height * 2, divx = 12, divy = 2, digit = 4, align = 0, ref = 525})
		
		parts.judge = {}
		do
			local judge_images = {}
			local judge_images2 = {}
			local judge_numbers = {}
			local judge_numbers2 = {}
			local judge_images9 = {
				p1 = {},
				p2 = {},
				p3 = {}
			}
			local judge_numbers9 = {
				p1 = {},
				p2 = {},
				p3 = {}
			}
			local def_x = judge_f_x - (jf_scale_width / 2)
			local def_y = judge_f_y - (jf_scale_height / 2)
			local def_w = judge_f_width + jf_scale_width
			local def_h = judge_f_height + jf_scale_height
			
			local offset = (g.lanes_width / 9) * 3
		
			local judge_types = {"pg","gr","gd","bd","pr","ms"}
			if skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def then
				for i, v in ipairs(judge_types) do
				
					if v == "bd" then
						judge_f_x = g.lanes_center_x - (judge_f_width / 2)
					end
					
					table.insert(judge_images, {id = "judgef-" .. v, filter = 1, loop = -1, timer = 46, offsets = {3,32}, dst = {
						{time = 0, x = judge_f_x - (jf_scale_width / 2), y = def_y, w = def_w, h = def_h, a = jf_scale_opacity},
						{time = j_scale_time, x = judge_f_x, y = judge_f_y, w = judge_f_width, h = judge_f_height, a = 255},
						{time = 500}
					}})
					
					table.insert(judge_numbers, {id = "judgen-" .. v, filter = 1, loop = -1, timer = 46, dst = {
						{time = 0, x = (judge_n_x + (jf_scale_width / 2)) - (jn_scale_width / 2), y = (judge_n_y + (jf_scale_height / 2)) - (jn_scale_height / 2), w = judge_n_width + jn_scale_width, h = judge_n_height + jn_scale_height, a = jn_scale_opacity},
						{time = j_scale_time, x = judge_n_x, y = judge_n_y, w = judge_n_width, h = judge_n_height, a = 255},
						{time = 500}
					}})
					-- 3列判定 1p
					table.insert(judge_images9.p1, {id = "judgef-" .. v, filter = 1, loop = -1, timer = 46, offsets = {3,32}, dst = {
						{time = 0, x = judge_f_x - (jf_scale_width / 2) - offset, y = def_y, w = def_w, h = def_h, a = jf_scale_opacity},
						{time = j_scale_time, x = judge_f_x - offset, y = judge_f_y, w = judge_f_width, h = judge_f_height, a = 255},
						{time = 500}
					}})
					table.insert(judge_numbers9.p1, {id = "judgen-" .. v, filter = 1, loop = -1, timer = 446, dst = {
						{time = 0, x = (judge_n_x + (jf_scale_width / 2)) - (jn_scale_width / 2), y = (judge_n_y + (jf_scale_height / 2)) - (jn_scale_height / 2), w = judge_n_width + jn_scale_width, h = judge_n_height + jn_scale_height, a = jn_scale_opacity},
						{time = j_scale_time, x = judge_n_x, y = judge_n_y, w = judge_n_width, h = judge_n_height, a = 255},
						{time = 500}
					}})
					-- 3列判定 2p
					table.insert(judge_images9.p2, {id = "judgef-" .. v, filter = 1, loop = -1, timer = 47, offsets = {3,32}, dst = {
						{time = 0, x = judge_f_x - (jf_scale_width / 2), y = def_y, w = def_w, h = def_h, a = jf_scale_opacity},
						{time = j_scale_time, x = judge_f_x, y = judge_f_y, w = judge_f_width, h = judge_f_height, a = 255},
						{time = 500}
					}})
					table.insert(judge_numbers9.p2, {id = "judgen-" .. v, filter = 1, loop = -1, timer = 447, dst = {
						{time = 0, x = (judge_n_x + (jf_scale_width / 2)) - (jn_scale_width / 2), y = (judge_n_y + (jf_scale_height / 2)) - (jn_scale_height / 2), w = judge_n_width + jn_scale_width, h = judge_n_height + jn_scale_height, a = jn_scale_opacity},
						{time = j_scale_time, x = judge_n_x, y = judge_n_y, w = judge_n_width, h = judge_n_height, a = 255},
						{time = 500}
					}})
					-- 3列判定 3p
					table.insert(judge_images9.p3, {id = "judgef-" .. v, filter = 1, loop = -1, timer = 247, offsets = {3,32}, dst = {
						{time = 0, x = judge_f_x - (jf_scale_width / 2) + offset, y = def_y, w = def_w, h = def_h, a = jf_scale_opacity},
						{time = j_scale_time, x = judge_f_x + offset, y = judge_f_y, w = judge_f_width, h = judge_f_height, a = 255},
						{time = 500}
					}})
					table.insert(judge_numbers9.p3, {id = "judgen-" .. v, filter = 1, loop = -1, timer = 448, dst = {
						{time = 0, x = (judge_n_x + (jf_scale_width / 2)) - (jn_scale_width / 2), y = (judge_n_y + (jf_scale_height / 2)) - (jn_scale_height / 2), w = judge_n_width + jn_scale_width, h = judge_n_height + jn_scale_height, a = jn_scale_opacity},
						{time = j_scale_time, x = judge_n_x, y = judge_n_y, w = judge_n_width, h = judge_n_height, a = 255},
						{time = 500}
					}})
				end	
		end
			
			
			if SKINTYPE == 4
			and skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def
			and skin_config.option["3列判定を使用する(DEFAULT判定文字限定) 3row Judge"] == j3row_on then
				parts.judge = {
					{id = "judge1", index = 0, images = judge_images9.p1, numbers = judge_numbers9.p1, shift = judge_shift},
					{id = "judge2", index = 1, images = judge_images9.p2, numbers = judge_numbers9.p2, shift = judge_shift},
					{id = "judge3", index = 2, images = judge_images9.p3, numbers = judge_numbers9.p3, shift = judge_shift}
				}
			elseif SKINTYPE == 2 then
				parts.judge = {
					{id = "judge1", index = 0, images = judge_images, numbers = judge_numbers, shift = judge_shift},
					{id = "judge2", index = 1, images = judge_images2, numbers = judge_numbers2, shift = judge_shift}
				}
			else
				parts.judge = {
					{id = "judge", index = 0, images = judge_images, numbers = judge_numbers, shift = judge_shift}
				}
			end
			
		end
		
	parts.destination = {}
	
		if SKINTYPE == 4
		and skin_config.option["使用する判定文字の設定 Judge Setting"] == judge_def
		and skin_config.option["3列判定を使用する(DEFAULT判定文字限定) 3row Judge"] == j3row_on then
			parts.destination = {
				{id = "ghost-mybest", loop = -1, timer = 46, op = {ghost_best}, offsets = {3,32,33},			dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-mybest", loop = -1, timer = 47, op = {ghost_best}, offsets = {3,32,33},			dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-mybest", loop = -1, timer = 247, op = {ghost_best}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 46, op = {ghost_tgt}, offsets = {3,32,33},			dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 47, op = {ghost_tgt}, offsets = {3,32,33},			dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 247, op = {ghost_tgt}, offsets = {3,32,33},			dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 46, op = {1242, jdetail_fs}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x - (g.lanes_width / 9 * 3), y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 47, op = {1262, jdetail_fs}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 247, op = {1362, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x + (g.lanes_width / 9 * 3), y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 46, op = {1243, jdetail_fs}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x - (g.lanes_width / 9 * 3), y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 47, op = {1263, jdetail_fs}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 247, op = {1363, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x + (g.lanes_width / 9 * 3), y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 46, op = {jdetail_ms}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x - (g.lanes_width / 9 * 3), y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 47, op = {jdetail_ms}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 247, op = {jdetail_ms}, offsets = {3,32,33},		dst = {{time = 0, x = judgedetail_x + (g.lanes_width / 9 * 3), y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judge1"},
				{id = "judge2"},
				{id = "judge3"}
			}
		elseif SKINTYPE == 2 then
			parts.destination = {
				{id = "ghost-mybest", loop = -1, timer = 46, op = {ghost_best}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-mybest", loop = -1, timer = 47, op = {ghost_best}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x2, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 46, op = {ghost_tgt}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 47, op = {ghost_tgt}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x2, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 46, op = {1242, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 47, op = {1262, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x2, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 46, op = {1243, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 47, op = {1263, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x2, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 46, op = {jdetail_ms}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 47, op = {jdetail_ms}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x2, y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judge1"},
				{id = "judge2"},
			}
		else
			parts.destination = {
				{id = "ghost-mybest", loop = -1, timer = 46, op = {ghost_best}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "ghost-target", loop = -1, timer = 46, op = {ghost_tgt}, offsets = {3,32,33},		dst = {{time = 0, x = ghost_x, y = ghost_y, w = ghost.GHOST_WIDTH, h = ghost.GHOST_HEIGHT},{time = 500}}},
				{id = "judge-fast", loop = -1, timer = 46, op = {1242, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judge-slow", loop = -1, timer = 46, op = {1243, jdetail_fs}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = judgedetail_width, h = judgedetail_height},{time = 500}}},
				{id = "judgedetail_ms", loop = -1, timer = 46, op = {jdetail_ms}, offsets = {3,32,33},	dst = {{time = 0, x = judgedetail_x, y = judgedetail_y, w = jdetail.JUDGE_DETAIL_WIDTH, h = jdetail.JUDGE_DETAIL_HEIGHT},{time = 500}}},
				{id = "judge"}
			}
		end
	
	return parts	
	
end

return {
	parts = parts,
	load = load
}