-- "gamemodes\\darkrp\\entities\\entities\\food\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Food"
ENT.Author = "Pcwizdan"
ENT.Spawnable = false

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 1, "owning_ent")
end
