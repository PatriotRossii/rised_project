-- "addons\\anvanced_hands\\lua\\weapons\\re_hands.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if SERVER then
	AddCSLuaFile()
end

SWEP.PrintName			= "Руки"
SWEP.Author				= "Recon"
SWEP.Purpose				= "Not much."
SWEP.Spawnable				= true
SWEP.Category				= "Other"

SWEP.ViewModel			= "models/weapons/c_medkit.mdl"
SWEP.WorldModel			= ""

SWEP.AnimPrefix	 		= "rpg"

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= true
SWEP.Secondary.Ammo			= "none"

SWEP.Slot				= 0
SWEP.SlotPos			= 1

SWEP.DrawCrosshair = true

function SWEP:Initialize()
	self:SetHoldType( "normal" )

	self.Time = 0
	self.Range = 150
end

function SWEP:Think()
	if self.Drag and (not self.Owner:KeyDown(IN_ATTACK) and not self.Owner:KeyDown(IN_ATTACK2) or not IsValid(self.Drag.Entity)) then
		self.Drag = nil
	end
end

local blacklisted_mdls = {
	"models/combine_scanner.mdl",
	"models/combine_apc.mdl",
	"models/combine_apc_destroyed_gib01.mdl",
}

function SWEP:SecondaryAttack()
	local Pos = self.Owner:GetShootPos()
	local Aim = self.Owner:GetAimVector()

	local Tr = util.TraceLine{
		start = Pos,
		endpos = Pos +Aim *self.Range,
		filter = player.GetAll(),
	}

	local HitEnt = Tr.Entity
	
	if IsValid(HitEnt) and table.HasValue(blacklisted_mdls, HitEnt:GetModel()) then
		return
	end
	
	if self.Drag then
		HitEnt = self.Drag.Entity
	else
		if not IsValid( HitEnt ) or HitEnt:GetMoveType() ~= MOVETYPE_VPHYSICS or
			HitEnt:IsVehicle() or HitEnt:GetNWBool( "NoDrag", false ) or
			HitEnt.BlockDrag or
			IsValid( HitEnt:GetParent() ) then
			return
		end

		if not self.Drag then
			self.Drag = {
				OffPos = HitEnt:WorldToLocal(Tr.HitPos),
				Entity = HitEnt,
				Fraction = Tr.Fraction,
			}
		end
	end

	if CLIENT or not IsValid( HitEnt ) then return end

	local Phys = HitEnt:GetPhysicsObject()
	
	if IsValid( Phys ) then
		local Pos2 = Pos +Aim *self.Range *self.Drag.Fraction
		local OffPos = HitEnt:LocalToWorld( self.Drag.OffPos )
		local Dif = Pos2 -OffPos
		local Nom = (Dif:GetNormal() *math.min(1, Dif:Length() /100) *500 -Phys:GetVelocity()) *Phys:GetMass()

		Phys:ApplyForceOffset( Nom, OffPos )
		Phys:AddAngleVelocity( -Phys:GetAngleVelocity() /4 )
	end
end

function SWEP:PrimaryAttack()
	local Pos = self.Owner:GetShootPos()
	local Aim = self.Owner:GetAimVector()

	local Tr = util.TraceLine{
		start = Pos,
		endpos = Pos +Aim *self.Range,
		filter = player.GetAll(),
	}

	local HitEnt = Tr.Entity

	if IsValid(HitEnt) and table.HasValue(blacklisted_mdls, HitEnt:GetModel()) then
		return
	end
	
	if self.Drag then
		HitEnt = self.Drag.Entity
	else
		if not IsValid( HitEnt ) or HitEnt:GetMoveType() ~= MOVETYPE_VPHYSICS or
			HitEnt:IsVehicle() or HitEnt:GetNWBool( "NoDrag", false ) or
			HitEnt.BlockDrag or
			IsValid( HitEnt:GetParent() ) then
			return
		end

		if not self.Drag then
			self.Drag = {
				OffPos = HitEnt:WorldToLocal(Tr.HitPos),
				Entity = HitEnt,
				Fraction = Tr.Fraction,
			}
		end
	end

	if CLIENT or not IsValid( HitEnt ) then return end

	local Phys = HitEnt:GetPhysicsObject()

	if IsValid( Phys ) then
		local Pos2 = Pos +Aim *self.Range *self.Drag.Fraction
		local OffPos = HitEnt:LocalToWorld( self.Drag.OffPos )
		local Dif = Pos2 -OffPos
		local Nom = (Dif:GetNormal() *math.min(1, Dif:Length() /100) *500 -Phys:GetVelocity()) *Phys:GetMass()

		Phys:ApplyForceOffset( Nom, OffPos )
		Phys:AddAngleVelocity( -Phys:GetAngleVelocity() /4 )
	end
	
	--if IsValid( Phys ) then
		--local Pos2 = Pos +Aim *self.Range *1.1 *self.Drag.Fraction
		--local OffPos = HitEnt:LocalToWorld( self.Drag.OffPos )
		--local Dif = Pos2 -OffPos
		--local Nom = (Dif:GetNormal() *math.min(1, Dif:Length() /25) *900 -Phys:GetVelocity()) *Phys:GetMass()

		--Phys:ApplyForceOffset( Nom, OffPos )
		--Phys:AddAngleVelocity( -Phys:GetAngleVelocity() /1 )
	--end
end

function SWEP:Reload()
	if self.Owner:GetNWBool("CanHandsUp") == false then
		self.Owner:SetNWBool("CanHandsUp", true)

		if self:GetHoldType() == "normal" then
			self:SetHoldType( "pistol" )
		else
			self:SetHoldType( "normal" )
		end
		
		timer.Simple(1, function() self.Owner:SetNWBool("CanHandsUp", false) end)
	end
end

function SWEP:OnRemove()
	self:Holster()
	return true
end

function SWEP:Holster()
	if not IsFirstTimePredicted() then return end
	return true
end

if CLIENT then
	local x, y = ScrW() /2, ScrH() /2
	local MainCol = Color( 255, 255, 255, 255 )
	local Col = Color( 255, 255, 255, 255 )

	function SWEP:DrawHUD()
		if IsValid( self.Owner:GetVehicle() ) then return end
		local Pos = self.Owner:GetShootPos()
		local Aim = self.Owner:GetAimVector()

		local Tr = util.TraceLine{
			start = Pos,
			endpos = Pos +Aim *self.Range,
			filter = player.GetAll(),
		}

		local HitEnt = Tr.Entity
		if IsValid( HitEnt ) and HitEnt:GetMoveType() == MOVETYPE_VPHYSICS and
			not self.rDag and
			not HitEnt:IsVehicle() and
			not IsValid( HitEnt:GetParent() ) and
			not HitEnt:GetNWBool( "NoDrag", false ) then

			self.Time = math.min( 1, self.Time +2 *FrameTime() )
		else
			self.Time = math.max( 0, self.Time -2 *FrameTime() )
		end

		if self.Time > 0 then
			Col.a = MainCol.a *self.Time

			draw.SimpleText(
				"",
				"DermaLarge",
				x,
				y,
				Col,
				TEXT_ALIGN_CENTER
			)
		end

		if self.Drag and IsValid( self.Drag.Entity ) then
			local Pos2 = Pos +Aim *100 *self.Drag.Fraction
			local OffPos = self.Drag.Entity:LocalToWorld( self.Drag.OffPos )
			local Dif = Pos2 -OffPos

			local A = OffPos:ToScreen()
			local B = Pos2:ToScreen()

			surface.DrawRect( A.x -2, A.y -2, 4, 4, MainCol )
			surface.DrawRect( B.x -2, B.y -2, 4, 4, MainCol )
			surface.DrawLine( A.x, A.y, B.x, B.y, MainCol )
		end
	end
end

function SWEP:PreDrawViewModel( vm, pl, wep )
	return true
end
