-- Retro steel furnace

local steelFurnace = table.deepcopy(data.raw["furnace"]["steel-furnace"])

local retroSteelFurnace = table.deepcopy(data.raw["recipe"]["steel-furnace"])
retroSteelFurnace.enabled = false
retroSteelFurnace.name = "retro-steel-furnace"
retroSteelFurnace.ingredients = {
    {"steel-plate", 6},
    {"stone-brick", 7},
    {"stone-furnace", 1}
}
retroSteelFurnace.result = "steel-furnace"

table.insert(
    data.raw["technology"]["advanced-material-processing"].effects,
    {
        type = "unlock-recipe",
        recipe = "retro-steel-furnace"
    }
)

data:extend{steelFurnace,retroSteelFurnace}



-- Retro electric furnace

local electricFurnace = table.deepcopy(data.raw["furnace"]["electric-furnace"])

local retroElectricFurnace = table.deepcopy(data.raw["recipe"]["electric-furnace"])
retroElectricFurnace.enabled = false
retroElectricFurnace.name = "retro-electric-furnace"
retroElectricFurnace.ingredients = {
    {"steel-plate", 4},
    {"advanced-circuit", 5},
    {"steel-furnace", 1}
}
retroElectricFurnace.result = "electric-furnace"

table.insert(
    data.raw["technology"]["advanced-material-processing-2"].effects,
    {
        type = "unlock-recipe",
        recipe = "retro-electric-furnace"
    }
)

data:extend{electricFurnace,retroElectricFurnace}
