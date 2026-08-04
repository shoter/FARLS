local function copyPrototype(type, name, newName, change_results)
    if not data.raw[type][name] then error("type "..type.." "..name.." doesn't exist") end
    local p = table.deepcopy(data.raw[type][name])
    p.name = newName
    if p.minable and p.minable.result then
        p.minable.result = newName
    end
    if change_results then
        if p.place_result then
            p.place_result = newName
        end
        if p.result then
            p.result = newName
        end
        if p.results then
            for _, result in pairs(p.results) do
                if result.name then
                    result.name = newName
                end
            end
        end
        if p.take_result then
            p.take_result = newName
        end
        if p.placed_as_equipment_result then
            p.placed_as_equipment_result = newName
        end
    end
    return p
end

return copyPrototype
