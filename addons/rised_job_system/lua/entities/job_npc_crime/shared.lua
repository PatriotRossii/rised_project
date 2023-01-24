-- "addons\\rised_job_system\\lua\\entities\\job_npc_crime\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ENT.Base = "base_ai" 
ENT.Type = "ai"
ENT.PrintName = "Crime"
ENT.Instructions = "Base entity"
ENT.Category = "A - Rised - [Работа]"
ENT.Author = "D-Rised"
ENT.Spawnable = true

function ENT:SetupDataTables()
	self:NetworkVar("String", 0, "JobName")
end

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
	self.AutomaticFrameAdvance = bUsingAnim
end