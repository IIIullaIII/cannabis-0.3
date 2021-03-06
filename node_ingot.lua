
minetest.register_craftitem("cannabis:mixed_hr_ingot", {
	description = ("Mixed HR Ingot"),
	inventory_image = "cannabis_mixed_hr_ingot.png",
})

minetest.register_craftitem(":cannabis:fibra_ingot", {
	description = ("fibra Ingot"),
	inventory_image = "cannabis_fibra_ingot.png",
})
minetest.register_craftitem(":cannabis:foglie_ingot", {
	description = ("foglie Ingot"),
	inventory_image = "cannabis_foglie_ingot.png",
})
minetest.register_craftitem("cannabis:high_performance_ingot", {
	description = ("High Performance Ingot"),
	inventory_image = "cannabis_high_performance_ingot.png",
})
minetest.register_craftitem(":cannabis:tessuto_ingot", {
	description = ("Tessuto Ingot"),
	inventory_image = "cannabis_tessuto_ingot.png",
})
local function for_each_registered_item(action)
	local already_reg = {}
	for k, _ in pairs(minetest.registered_items) do
		table.insert(already_reg, k)
	end
	local really_register_craftitem = minetest.register_craftitem
	minetest.register_craftitem = function(name, def)
		really_register_craftitem(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_tool = minetest.register_tool
	minetest.register_tool = function(name, def)
		really_register_tool(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_node = minetest.register_node
	minetest.register_node = function(name, def)
		really_register_node(name, def)
		action(string.gsub(name, "^:", ""))
	end
	for _, name in ipairs(already_reg) do
		action(name)
	end
end

local function register_block(block, ingot)
	minetest.register_craft({
		output = block,
		recipe = {
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
		}
	})

	minetest.register_craft({
		output = ingot.." 9",
		recipe = {
			{block}
		}
	})
end

register_block("cannabis:cannabis_fibra_block", "cannabis:fibra_ingot")
register_block("cannabis:cannabis_high_performance_block", "cannabis:high_performance_ingot")
register_block("cannabis:cannabis_tessuto_block", "cannabis:tessuto_ingot")
register_block("cannabis:cannabis_foglie_block", "cannabis:foglie_ingot")

minetest.register_node("cannabis:hp_block_canapa", 
    {
	description = "hp_block_canapa",
	tiles = {"hp_block_canapa.png"},
	is_ground_content = false,
	groups = {choppy = 30, oddly_breakable_by_hand = 1, flammable = 3, wood = 1},
	sounds = "cannabis:cannabis_canapa_s2",
})

minetest.register_node("cannabis:cannabis_foglie_block", {
	description = ("Foglie Block"),
	tiles = { "cannabis_foglie_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis:cannabis_canapa_s3"
})

minetest.register_node("cannabis:cannabis_tessuto_block", {
	description = ("Tessuto Block"),
	tiles = { "cannabis_tessuto_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})


minetest.register_node("cannabis:cannabis_high_performance_block", {
	description = ("High Performance Block"),
	tiles = { "cannabis_high_performance_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})
minetest.register_node("cannabis:cannabis_fibra_block", {
	description = ("Fibra Block"),
	tiles = { "cannabis_fibra_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_fiber",
	output = "cannabis:fibra_ingot",
})


minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_leaves",
	output = "cannabis:foglie_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_paper",
	output = "cannabis:tessuto_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_plastic",
	cooktime = 2,
	output = "cannabis:high_performance_ingot",
})

local function for_each_registered_item(action)
	local already_reg = {}
	for k, _ in pairs(minetest.registered_items) do
		table.insert(already_reg, k)
	end
	local really_register_craftitem = minetest.register_craftitem
	minetest.register_craftitem = function(name, def)
		really_register_craftitem(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_tool = minetest.register_tool
	minetest.register_tool = function(name, def)
		really_register_tool(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_node = minetest.register_node
	minetest.register_node = function(name, def)
		really_register_node(name, def)
		action(string.gsub(name, "^:", ""))
	end
	for _, name in ipairs(already_reg) do
		action(name)
	end
end
