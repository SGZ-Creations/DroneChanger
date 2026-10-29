local Tech = data.raw["technology"]
local SS = settings.startup
if mods["Transport_Drones_Continued_Fixed"] then
	table.insert(Tech["transport-system"].effects, {type="unlock-recipe", recipe="fluid-depot"})
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 2000}
    Tech["fast-road"].unit = nil

	Tech["transport-system"].prerequisites = {"steel-processing", "automation-science-pack"}

	if Tech["transport-fluids"] then
		Tech["transport-fluids"].hidden = true
		Tech["transport-fluids"].enabled = false
	end

	Tech["transport-system"].unit.ingredients = {{"automation-science-pack",  1}}
	if Tech["transport-buffering"] then
		Tech["transport-buffering"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}
	end

	if (SS["enable-active-depot"].value == true or SS["enable-storage-depot"].value == true) then
		Tech["transport-active-supply"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}
	end

	if mods["pypostprocessing"]then
		Tech["transport-system"].prerequisites = nil
	end
end

if mods["Transport_Drones"] then
	Tech["transport-system"].prerequisites = {"steel-processing", "automation-science-pack"}
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 2000}
    Tech["fast-road"].unit = nil
	Tech["miniature-transport-depots"].hidden = true
	Tech["miniature-transport-depots"].enabled = false
	Tech["transport-system"].unit.ingredients = {{"automation-science-pack",  2}}
	if mods["pypostprocessing"]then
		Tech["transport-system"].prerequisites = nil
	end
end

if mods["SeaBlock"] then
    if (mods["Transport_Drones"] or mods["Transport_Drones_Continued_Fixed"]) then
        Tech["transport-system"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-hydrogen", amount = 5000}
        Tech["transport-system"].prerequisites = nil
        Tech["transport-system"].unit = nil
    end
end