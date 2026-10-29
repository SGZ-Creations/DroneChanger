local Recipe = data.raw["recipe"]
function RemoveIngredient(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            error("ERROR.. \""..ingredient_name.."\" Ingrediant name Failed to Load!")
        elseif Recipe[recipe_name] == nil then
            error("ERROR... \""..recipe_name.."\" Recipe name Failed to Load!")
        end
    end
end

if mods["SeaBlock"]then
    if (mods["Transport_Drones_Continued_Fixed"] or mods["Transport_Drones"])then
        RemoveIngredient("transport-drone", "engine-unit") table.insert(Recipe["transport-drone"].ingredients, {type="item", name= "bob-basic-circuit-board", amount=2})
        RemoveIngredient("road", "coal") table.insert(Recipe["road"].ingredients, {type="item", name= "angels-wood-charcoal", amount=10})
    end
end