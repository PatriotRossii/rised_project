-- "lua\\weapons\\weapon_metropolice_mp5k_vo\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if SERVER then
AddCSLuaFile( "shared.lua" )
SWEP.HoldType = "smg"
end
if CLIENT then
language.Add("weapon_metropolice_mp5k_vo", "Metropolice MP5k")
killicon.Add( "weapon_metropolice_mp5k_vo", "effects/killicons/weapon_metropolice_smg", color_white )

SWEP.WepSelectIcon = surface.GetTextureID("HUD/swepicons/metropolice_smg_icon") 
SWEP.DrawWeaponInfoBox	= false
SWEP.BounceWeaponIcon = false

SWEP.PrintName = "MP5k"
SWEP.Slot = 2
SWEP.SlotPos = 4
SWEP.DrawAmmo = true
SWEP.DrawCrosshair = true
SWEP.ViewModelFOV = 55
SWEP.ViewModelFlip = false
end

SWEP.ViewModel = "models/weapons/metropolice_smg/mp5k/v_mp5k.mdl"
SWEP.WorldModel = "models/weapons/metropolice_smg/mp5k/w_mp5k.mdl"
SWEP.Category	= "Civil Protection"
SWEP.HoldType			= "smg"
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.FiresUnderwater		= true

game.AddAmmoType( { name = "9x19_mm_Luger" } )
if ( CLIENT ) then language.Add( "9x19_mm_Luger_ammo", "9x19 mm Luger ammo" ) end

SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 150
SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 0.09
SWEP.Primary.Ammo = "9x19_mm_Luger"
SWEP.Primary.TakeAmmo = 1
SWEP.Primary.Recoil = 0.25
SWEP.Primary.Spread = 0.35
SWEP.Primary.Force = 5
SWEP.Primary.Damage = 10
SWEP.Primary.NumberofShots = 1

function SWEP:Initialize()
	self:SetWeaponHoldType(self.HoldType)
	self.VoiceInterval = 0
end

local deploy_vo = {"vo/npc/metropolice_beta/deploy01.wav",
"vo/npc/metropolice_beta/deploy02.wav",
"vo/npc/metropolice_beta/deploy03.wav",
"vo/npc/metropolice_beta/deploy04.wav",
"vo/npc/metropolice_beta/deploy05.wav",
"vo/npc/metropolice_beta/deploy06.wav"
}

local attack_vo = {"vo/npc/metropolice_beta/hiding01.wav",
"vo/npc/metropolice_beta/hiding02.wav",
"vo/npc/metropolice_beta/hiding03.wav",
"vo/npc/metropolice_beta/hiding04.wav",
"vo/npc/metropolice_beta/hiding05.wav",
"vo/npc/metropolice_beta/pointer01.wav",
"vo/npc/metropolice_beta/pointer02.wav",
"vo/npc/metropolice_beta/pointer04.wav",
"vo/npc/metropolice_beta/shooter03.wav"
}

function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW);
	self.Owner:EmitSound(deploy_vo[math.random(1,6)])
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration())
	self:SetNextSecondaryFire( CurTime() + self:SequenceDuration())
	self:NextThink( CurTime() + self:SequenceDuration() )
	self.Owner:EmitSound(Sound("weapons/metropolice_smg/mp5k/draw.wav"))
	self:Idle()
	return true
end

function SWEP:Holster()
return true
end


function SWEP:Think()
if ( self.Owner:KeyReleased( IN_ATTACK ) || ( !self.Owner:KeyDown( IN_ATTACK ) && self.Sound ) ) then		
self:Idle()
end
end


function SWEP:Reload()
	if ( self:Clip1() < self.Primary.ClipSize && self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
	if self.Weapon:DefaultReload(ACT_VM_RELOAD) then
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration())
	self:NextThink( CurTime() + self:SequenceDuration() )
self.Owner:EmitSound(Sound("weapons/metropolice_smg/mp5k/reload.wav")) 
self:Idle()
end
end
end

function SWEP:AttackVoice()

if CurTime() > self.VoiceInterval then
	if SERVER then
	self.Owner:EmitSound(attack_vo[math.random(1,9)])
	end
	self.VoiceInterval = CurTime() + 4
end

end


function SWEP:PrimaryAttack()
	if ( !self:CanPrimaryAttack() ) then return end
	local bullet = {}
		bullet.Num = self.Primary.NumberofShots
		bullet.Src = self.Owner:GetShootPos()
		bullet.Dir = self.Owner:GetAimVector()
		bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
		bullet.Tracer = 1
		bullet.Force = self.Primary.Force
		bullet.Damage = self.Primary.Damage
		bullet.AmmoType = self.Primary.Ammo
		bullet.TracerName = "AirboatGunTracer"
		bullet.Callback = function ( attacker, tr, dmginfo ) 
			dmginfo:SetDamageType(DMG_AIRBOAT);
		end
	local rnda = self.Primary.Recoil * -1
	local rndb = 0
	self:ShootEffects()
	self.Owner:FireBullets( bullet )
	self.Owner:EmitSound(Sound("weapons/metropolice_smg/mp5k/single.wav"))
	self.Owner:ViewPunch( Angle( rnda,rndb,rnda ) )
	self:TakePrimaryAmmo(self.Primary.TakeAmmo)
	self:AttackVoice()
	self.Weapon:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self.Weapon:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
end


function SWEP:SecondaryAttack()	
self.Weapon:SetNextSecondaryFire( CurTime() + 2 )
if SERVER then
self.Owner:EmitSound("vo/npc/metropolice_beta/dropweapon.wav")
end
end


function SWEP:Idle()
if ( CLIENT || !IsValid( self.Owner ) ) then return end
timer.Create( "weapon_idle" .. self:EntIndex(), self:SequenceDuration() - 0.2, 1, function()
if ( !IsValid( self ) ) then return end
self:DoIdle()
end )
end


function SWEP:DoIdleAnimation()
self:SendWeaponAnim( ACT_VM_IDLE )
end


function SWEP:DoIdle()
self:DoIdleAnimation()
timer.Adjust( "weapon_idle" .. self:EntIndex(), self:SequenceDuration(), 0, function()
if ( !IsValid( self ) ) then timer.Destroy( "weapon_idle" .. self:EntIndex() ) return end
self:DoIdleAnimation()
end )
end


function SWEP:StopIdle()
timer.Destroy( "weapon_idle" .. self:EntIndex() )
end


function SWEP:Holster( weapon )
if ( CLIENT ) then return end
self:StopIdle()
return true
end