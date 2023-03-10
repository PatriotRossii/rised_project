-- "lua\\tfa\\modules\\cl_tfa_inspection.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if CLIENT then
	local doblur = GetConVar("cl_tfa_inspection_bokeh")
	local blurdist = GetConVar("cl_tfa_inspection_bokeh_radius")
	local tfablurintensity = 0
	local blur_mat = Material("pp/bokehblur")
	local tab = {}
	tab["$pp_colour_addr"] = 0
	tab["$pp_colour_addg"] = 0
	tab["$pp_colour_addb"] = 0
	tab["$pp_colour_brightness"] = 0
	tab["$pp_colour_contrast"] = 1
	tab["$pp_colour_colour"] = 1
	tab["$pp_colour_mulr"] = 0
	tab["$pp_colour_mulg"] = 0
	tab["$pp_colour_mulb"] = 0

	local function MyDrawBokehDOF()
		render.UpdateScreenEffectTexture()
		render.UpdateFullScreenDepthTexture()
		blur_mat:SetTexture("$BASETEXTURE", render.GetScreenEffectTexture())
		blur_mat:SetTexture("$DEPTHTEXTURE", render.GetResolvedFullFrameDepth())
		blur_mat:SetFloat("$size", tfablurintensity * 6)
		blur_mat:SetFloat("$focus", 0)
		blur_mat:SetFloat("$focusradius", blurdist:GetFloat())
		render.SetMaterial(blur_mat)
		render.DrawScreenQuad()
	end

	local cv_dxlevel = GetConVar("mat_dxlevel")

	local function Render()
		tfablurintensity = 0

		if cv_dxlevel:GetInt() < 90 then return end
		if TFA.DrawingRenderTarget then return end

		local ply = LocalPlayer()
		if not IsValid(ply) then return end

		local wep = ply:GetActiveWeapon()
		if not IsValid(wep) or not wep.IsTFAWeapon then return end

		tfablurintensity = wep:GetInspectingProgress()

		if tfablurintensity > 0.01 then
			if doblur and doblur:GetBool() then
				MyDrawBokehDOF()
			end

			tab["$pp_colour_brightness"] = -tfablurintensity * 0.02
			tab["$pp_colour_contrast"] = 1 - tfablurintensity * 0.1

			DrawColorModify(tab)
		end
	end

	local function InitTFABlur()
		hook.Add("PreDrawViewModels", "PreDrawViewModels_TFA_INSPECT", Render)

		local pp_bokeh = GetConVar( "pp_bokeh" )
		hook.Remove("NeedsDepthPass","NeedsDepthPass_Bokeh")
		hook.Add("NeedsDepthPass", "aaaaaaaaaaaaaaaaaaNeedsDepthPass_TFA_Inspect", function()
			if not ( doblur and doblur:GetBool() ) then return end

			if tfablurintensity > 0.01 or ( pp_bokeh and pp_bokeh:GetBool() ) then
				DOFModeHack(true)

				return true
			end
		end)
	end

	hook.Add("InitPostEntity","InitTFABlur",InitTFABlur)

	InitTFABlur()
end