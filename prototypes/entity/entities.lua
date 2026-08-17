local copyPrototype = require "__FARLS__/lib"
local farl = copyPrototype("locomotive", "locomotive", "farl")
farl.icon = "__FARLS__/graphics/icons/farl.png"
farl.icon_size = 32
farl.icon_mipmaps = 0
farl.max_speed = 0.8
if farl.energy_source and farl.energy_source.type == "burner" then
    farl.energy_source.fuel_inventory_size = 4
elseif farl.burner then
    farl.burner.fuel_inventory_size = 4
end

farl.color = {r = 1, g = 0.80, b = 0, a = 0.8}
--farl.color = {r = 0.8, g = 0.40, b = 0, a = 0.8}
data:extend({farl})
