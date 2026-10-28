local Recipe = data.raw["recipe"]

-- To have this active regardless of modpack.
if mods["Transport_Drones"]then
	Recipe["transport-drone"].results = {
		{type = "item", name = "transport-drone", amount = 10},
	}
	Recipe["fast-road"].ingredients = {
		{type = "item", name = "road", amount = 10},
		{type = "fluid", name = "crude-oil", amount = 50},
		{type = "item", name = "concrete", amount = 10},
	}
	Recipe["transport-drone"].ingredients = {
		{type = "item", name = "electronic-circuit", amount = 10},
		{type = "item", name = "steel-plate", amount = 10},
	}
-- To replace recipes in the eventkrastorio2 or K2SO is active. This won't be listed as a dependency as K2 is required by K2SO.
	if mods["Krastorio2"] then
		Recipe["transport-drone"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "kr-automation-core", amount = 10},
			{type = "item", name = "kr-steel-beam", amount = 10},
		}
	end
-- To replace recipes in the event PY processing is active.
	if mods["pypostprocessing"]then
		table.insert(Recipe["road"].categories, {"crafting-with-fluid"})
		Recipe["road"].ingredients = {
			{type = "fluid", name = "tar", amount = 10},
			{type = "item", name = "stone", amount = 5},
			{type = "item", name = "gravel", amount = 10},
			{type = "item", name = "soil", amount = 20},
		}
		Recipe["fast-road"].ingredients = {
			{type = "item", name = "road", amount = 1},
			{type = "fluid", name = "pitch", amount = 20},
			{type = "item", name = "concrete", amount = 20},
			{type = "item", name = "stone-brick", amount = 20},
		}
		Recipe["transport-drone"].ingredients = {
			{type = "item", name = "glass", amount = 10},
			{type = "item", name = "engine-unit", amount = 10},
			{type = "item", name = "tinned-cable", amount = 10},
			{type = "item", name = "small-parts-01", amount = 10},
		}
	end
-- To replace recipes in the event Bobs mods are active.
	if mods["bobplates"] and mods["bobrevamp"] then
		Recipe["request-depot"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 20},
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-solder", amount = 20},
		}
		Recipe["supply-depot"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-solder", amount = 20},
		}
		Recipe["buffer-depot"].ingredients = {
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-insulated-cable", amount = 25},
		}
		Recipe["fluid-depot"].ingredients = {
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-steel-pipe", amount = 10},
			{type = "item", name = "bob-lead-plate", amount = 50},
			{type = "item", name = "copper-plate", amount = 50},
		}
		Recipe["fuel-depot"].ingredients = {
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "bob-silver-plate", amount = 50},
			{type = "item", name = "bob-bronze-alloy", amount = 25},
			{type = "item", name = "bob-glass", amount = 100},
			{type = "item", name = "bob-rubber", amount = 25},
		}
	end
end