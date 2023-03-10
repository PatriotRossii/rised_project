-- "lua\\entities\\tfa_exp_rocket.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
AddCSLuaFile()

ENT.Base = "tfa_exp_base"
ENT.PrintName = "Rocket-Propelled Explosive"

-- EDITABLE PARAMETERS -- START

ENT.LaunchSound = "" -- none, replace to enable
ENT.PropelSound = Sound("Missile.Accelerate") -- looped propel sound

ENT.BaseSpeed = 500 -- base rocket speed, in units

ENT.AccelerationTime = 0.25 -- time in seconds to accelerate to max speed
ENT.MaxSpeed = 1500 -- maximum speed, works if AccelerationTime > 0

ENT.HasTrail = true -- create trail

-- EDITABLE PARAMETERS -- END

ENT.AccelProgress = 0

ENT.DefaultModel = Model("models/weapons/w_missile.mdl")
ENT.Delay = 10

DEFINE_BASECLASS(ENT.Base)

-- Creates HL2 rocket trail by default, feel free to copy and edit to your needs
function ENT:CreateRocketTrail()
	if not SERVER then return end

	local rockettrail = ents.Create("env_rockettrail")
	rockettrail:DeleteOnRemove(self)

	rockettrail:SetPos(self:GetPos())
	rockettrail:SetAngles(self:GetAngles())
	rockettrail:SetParent(self)
	rockettrail:SetMoveType(MOVETYPE_NONE)
	rockettrail:AddSolidFlags(FSOLID_NOT_SOLID)

	rockettrail:SetSaveValue("m_Opacity", 0.2)
	rockettrail:SetSaveValue("m_SpawnRate", 100)
	rockettrail:SetSaveValue("m_ParticleLifetime", 0.5)
	rockettrail:SetSaveValue("m_StartColor", Vector(0.65, 0.65, 0.65))
	rockettrail:SetSaveValue("m_EndColor", Vector(0, 0, 0))
	rockettrail:SetSaveValue("m_StartSize", 8)
	rockettrail:SetSaveValue("m_EndSize", 32)
	rockettrail:SetSaveValue("m_SpawnRadius", 4)
	rockettrail:SetSaveValue("m_MinSpeed", 2)
	rockettrail:SetSaveValue("m_MaxSpeed", 16)
	rockettrail:SetSaveValue("m_nAttachment", 0)
	rockettrail:SetSaveValue("m_flDeathTime", CurTime() + 999)

	rockettrail:Activate()
	rockettrail:Spawn()
end

function ENT:Initialize(...)
	BaseClass.Initialize(self, ...)

	self:EmitSoundNet(self.PropelSound)

	if self.LaunchSound and self.LaunchSound ~= "" then
		self:EmitSoundNet(self.LaunchSound)
	end

	self:SetFriction(0)
	self:SetLocalAngularVelocity(angle_zero)

	self:SetMoveType(bit.bor(MOVETYPE_FLYGRAVITY, MOVECOLLIDE_FLY_BOUNCE))
	self:SetLocalVelocity(self:GetForward() * self.BaseSpeed)

	if self.HasTrail then
		self:CreateRocketTrail()
	end
end

function ENT:Think(...)
	if self.AccelerationTime > 0 and self.AccelProgress < 1 then
		self.LastAccelThink = self.LastAccelThink or CurTime()
		self.AccelProgress = Lerp((CurTime() - self.LastAccelThink) / self.AccelerationTime, self.AccelProgress, 1)
	end

	self:SetLocalVelocity(self:GetForward() * Lerp(self.AccelProgress, self.BaseSpeed, self.MaxSpeed))

	return BaseClass.Think(self, ...)
end

function ENT:Explode(...)
	self:StopSound(self.PropelSound)

	return BaseClass.Explode(self, ...)
end

function ENT:Touch()
	self.killtime = -1
end
