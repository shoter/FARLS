if not settings.startup["farl_enable_module"].value then
    return
end
local copyPrototype = require "__FARL-Revised_Shoter__/lib"
data:extend
    {
        {
            type = "equipment-category",
            name = "farl-equipment"
        },
        {
            type = "equipment-grid",
            name = "farl-equipment-grid",
            width = 2,
            height = 2,
            equipment_categories = {"farl-equipment"},
        },--[[
    {
      type = "equipment-grid",
      name = "farl-equipment-grid-wagon",
      width = 8,
      height = 8,
      equipment_categories = {"farl-equipment", "armor"},
    },]]--
}

local farlRoboport =  copyPrototype("roboport-equipment", "personal-roboport-equipment", "farl-roboport", true)
farlRoboport.energy_consumption = nil
--farlRoboport.robot_limit = 50
farlRoboport.robot_limit = 0
farlRoboport.charging_station_count = 0
--farlRoboport.construction_radius = 30
farlRoboport.construction_radius = 0
farlRoboport.categories = {"farl-equipment"}

local farlRoboportRecipe = copyPrototype("recipe", "personal-roboport-equipment", "farl-roboport", true)

if not mods["IndustrialRevolution"] then
    farlRoboportRecipe.ingredients = {
        {type = "item", name = "iron-gear-wheel", amount = 5},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "steel-plate", amount = 5},
    }
else
    farlRoboportRecipe.ingredients = {
        {type = "item", name = "iron-gear-wheel", amount = 5},
        {type = "item", name = "electronic-circuit", amount = 5},
        {type = "item", name = "iron-plate-heavy", amount = 5},
    }
end


local farlRoboportItem = copyPrototype("item", "personal-roboport-equipment", "farl-roboport", true)
farlRoboportItem.subgroup = "train-transport"
farlRoboportItem.order = "a[train-system]-j[farl]"
farlRoboportItem.icon = "__FARL-Revised_Shoter__/graphics/icons/farl-roboport.png"
farlRoboportItem.icon_size = 32
farlRoboportItem.icon_mipmaps = 0

data:extend{farlRoboport, farlRoboportItem, farlRoboportRecipe}
