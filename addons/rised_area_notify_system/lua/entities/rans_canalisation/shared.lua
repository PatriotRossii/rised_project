-- "addons\\rised_area_notify_system\\lua\\entities\\rans_canalisation\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Type = "anim"

ENT.Base = "base_gmodentity"

ENT.PrintName		= "Канализация"
ENT.Category 		= "A - Rised - [Город]"
ENT.Author			= "D-Rised"

ENT.Spawnable = true

ENT.AreaName = "Канализация"

function ENT:Think()
	if CLIENT then
		local dist = ply:GetPos():DistToSqr( self:GetPos() )
		if dist > 25000 then return end

		if LocalPlayer():GetNWString("Player_AreaNotify_CurrentArea", "") != self.AreaName then
			LocalPlayer():SetNWBool("Player_AreaNotify_StartNotify", true)
			LocalPlayer():SetNWString("Player_AreaNotify_CurrentArea", self.AreaName)
		end
	end
end