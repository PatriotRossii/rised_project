-- "lua\\tfa\\modules\\cl_tfa_settingsmenu.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
local IsSinglePlayer = game.SinglePlayer()

function TFA.NumSliderNet(_parent, label, convar, min, max, decimals, ...)
	local gconvar = assert(GetConVar(convar), "Unknown ConVar: " .. convar .. "!")
	local newpanel

	if IsSinglePlayer then
		newpanel = _parent:NumSlider(label, convar, min, max, decimals, ...)
	else
		newpanel = _parent:NumSlider(label, nil, min, max, decimals, ...)
	end

	decimals = decimals or 0
	local sf = "%." .. decimals .. "f"

	if not IsSinglePlayer then
		local ignore = false

		newpanel.Think = function(_self)
			if _self._wait_for_update and _self._wait_for_update > RealTime() then return end
			local float = gconvar:GetFloat()

			if _self:GetValue() ~= float then
				ignore = true
				_self:SetValue(float)
				ignore = false
			end
		end

		newpanel.OnValueChanged = function(_self, _newval)
			if ignore then return end

			if not LocalPlayer():IsAdmin() then return end
			_self._wait_for_update = RealTime() + 1

			timer.Create("tfa_vgui_" .. convar, 0.5, 1, function()
				if not LocalPlayer():IsAdmin() then return end

				net.Start("TFA_SetServerCommand")
				net.WriteString(convar)
				net.WriteString(string.format(sf, _newval))
				net.SendToServer()
			end)
		end
	end

	return newpanel
end

function TFA.CheckBoxNet(_parent, label, convar, ...)
	local gconvar = assert(GetConVar(convar), "Unknown ConVar: " .. convar .. "!")
	local newpanel

	if IsSinglePlayer then
		newpanel = _parent:CheckBox(label, convar, ...)
	else
		newpanel = _parent:CheckBox(label, nil, ...)
	end

	if not IsSinglePlayer then
		if not IsValid(newpanel.Button) then return newpanel end

		newpanel.Button.Think = function(_self)
			local bool = gconvar:GetBool()

			if _self:GetChecked() ~= bool then
				_self:SetChecked(bool)
			end
		end

		newpanel.OnChange = function(_self, _bVal)
			if not LocalPlayer():IsAdmin() then return end
			if _bVal == gconvar:GetBool() then return end

			net.Start("TFA_SetServerCommand")
			net.WriteString(convar)
			net.WriteString(_bVal and "1" or "0")
			net.SendToServer()
		end
	end

	return newpanel
end

function TFA.ComboBoxNet(_parent, label, convar, ...)
	local gconvar = assert(GetConVar(convar), "Unknown ConVar: " .. convar .. "!")
	local combobox, leftpanel

	if IsSinglePlayer then
		combobox, leftpanel = _parent:ComboBox(label, convar, ...)
	else
		combobox, leftpanel = _parent:ComboBox(label, nil, ...)
	end

	if not IsSinglePlayer then
		combobox.Think = function(_self)
			local value = gconvar:GetString()

			if _self:GetValue() ~= value then
				_self:SetValue(value)
			end
		end

		combobox.OnSelect = function(_self, _index, _value, _data)
			if not LocalPlayer():IsAdmin() then return end
			local _newval = tostring(_data or _value)

			net.Start("TFA_SetServerCommand")
			net.WriteString(convar)
			net.WriteString(_newval)
			net.SendToServer()
		end
	end

	return combobox, leftpanel
end
