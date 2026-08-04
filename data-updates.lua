local tech_name = "rail-signals"
if mods["IndustrialRevolution"] then
    tech_name = "automated-rail-transportation"
end

local technology = data.raw["technology"][tech_name]
-- Factorio 2.0 removed the rail-signals tech; signals are part of automated-rail-transportation
if not technology then
    technology = data.raw["technology"]["automated-rail-transportation"]
end
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
