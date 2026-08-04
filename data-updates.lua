local tech_name = "rail-signals"
if mods["IndustrialRevolution"] then
    tech_name = "automated-rail-transportation"
end

local technology = data.raw["technology"][tech_name]
if technology then
    technology.effects = technology.effects or {}
    table.insert(technology.effects,
    {
        type="unlock-recipe",
        recipe = "farl"
    })
    if settings.startup["farl_enable_module"].value then
        table.insert(technology.effects,
        {
            type="unlock-recipe",
            recipe = "farl-roboport"
        })
    end
end
