-- "lua\\entities\\ifak_ammo\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if SERVER then
	AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Base = "tfa_ammo_base"
ENT.PrintName = "Bandages"
ENT.Category = "Healing Ammo"
ENT.Spawnable = true
ENT.AdminSpawnable = true
ENT.Class = ""
ENT.MyModel = "models/Items/BoxSRounds.mdl"
ENT.ImpactSound = "Default.ImpactSoft"
ENT.AmmoCount = 3
ENT.AmmoType = "fas2_bandage"
ENT.DrawText = true
ENT.TextColor = Color(255, 255, 255, 255)
ENT.TextPosition = Vector(2, 1.5, 11.6)
ENT.TextAngles = Vector(90, 90, 90)
ENT.ShouldDrawShadow = true
ENT.ImpactSound = "Default.ImpactSoft"
ENT.Damage = 40
ENT.Text = "Bandages"
