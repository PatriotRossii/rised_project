-- "gamemodes\\darkrp\\entities\\entities\\spawned_food\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Spawned Food"
ENT.Author = "Rickster"
ENT.Spawnable = false
ENT.IsSpawnedFood = true

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 1, "owning_ent")
end
