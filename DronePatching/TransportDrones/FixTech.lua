local Tech = data.raw["technology"]
local SS = settings.startup
if mods["Transport_Drones_Continued_Fixed"] then
	Tech["transport-basic"].prerequisites = {"steel-processing", "automation-science-pack"}
	Tech["transport-basic"].unit.ingredients = {{"automation-science-pack",  1}}

	Tech["transport-deliveries"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}

	if (SS["enable-active-depot"].value == true or SS["enable-storage-depot"].value == true or SS["enable-buffer-depot"].value == true) then
		Tech["transport-advanced"].unit.ingredients = {{"automation-science-pack",  1}, {"logistic-science-pack",  1}}
	end

	if mods["pypostprocessing"]then
		Tech["transport-basic"].unit.ingredients = {{"automation-science-pack",  1}}
		Tech["transport-basic"].unit.count = 80
	end
		if mods["SeaBlock"] then
		Tech["transport-deliveries"].unit.ingredients = {{"automation-science-pack",  1}}
		Tech["transport-basic"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-hydrogen", amount = 5000}
		Tech["transport-basic"].prerequisites = nil
		Tech["transport-basic"].unit = nil
	end
end

if mods["Transport_Drones"] then
	if Tech["transport-system"] then
		Tech["transport-system"].unit.ingredients = {{"automation-science-pack",  2}}
		Tech["transport-system"].prerequisites = {"steel-processing", "automation-science-pack"}
	end
	Tech["fast-road"].research_trigger = {type ="craft-item", item ="road", count = 2000}
    Tech["fast-road"].unit = nil
	Tech["miniature-transport-depots"].hidden = true
	Tech["miniature-transport-depots"].enabled = false
	if mods["pypostprocessing"]then
		Tech["transport-system"].prerequisites = nil
	end
	if mods["SeaBlock"] then
		Tech["transport-system"].research_trigger = {type ="craft-fluid", fluid ="angels-gas-hydrogen", amount = 5000}
		Tech["transport-system"].prerequisites = nil
		Tech["transport-system"].unit = nil
	end
end