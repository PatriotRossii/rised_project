-- "addons\\darkrpmodification\\lua\\entities\\combine_scanner\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Scanner"
ENT.Author = "D-Rised"
ENT.Spawnable = false

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 1, "owning_ent")
end
