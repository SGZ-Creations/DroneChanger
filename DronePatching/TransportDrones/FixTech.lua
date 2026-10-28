local Tech = data.raw["technology"]
local Recipe = data.raw["recipe"]

if mods["Transport_Drones_Continued_Fixed"] then
	table.insert(Tech["transport-system"].effects, {type="unlock-recipe", recipe="fluid-depot"})
	--if (Recipe["active-depot"].enabled == false or Recipe["storage-depot"].enabled == false) then
		Tech["transport-active-supply"].hidden = true
		Tech["transport-active-supply"].enabled = false
	--end
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 1000}
    Tech["fast-road"].unit = nil
	Tech["transport-fluids"].hidden = true
	Tech["transport-fluids"].enabled = false
	Tech["transport-system"].prerequisites = {"steel-processing", "automation-science-pack"}
	Tech["transport-system"].unit.ingredients = {{"automation-science-pack",  1}}
	Tech["transport-buffering"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}
	Tech["transport-active-supply"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}
end

if mods["Transport_Drones"] then
	Tech["transport-system"].prerequisites = {"steel-processing", "automation-science-pack"}
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 1000}
    Tech["fast-road"].unit = nil
	Tech["miniature-transport-depots"].hidden = true
	Tech["miniature-transport-depots"].enabled = false
	Tech["transport-system"].unit.ingredients = {{"automation-science-pack",  2}}
end