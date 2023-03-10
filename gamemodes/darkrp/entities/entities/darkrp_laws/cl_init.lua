-- "gamemodes\\darkrp\\entities\\entities\\darkrp_laws\\cl_init.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
include("shared.lua")

local Laws = {}

function ENT:Draw()
    self:DrawModel()

    local DrawPos = self:LocalToWorld(Vector(1, -111, 58))

    local DrawAngles = self:GetAngles()
    DrawAngles:RotateAroundAxis(self:GetAngles():Forward(), 90)
    DrawAngles:RotateAroundAxis(self:GetAngles():Up(), 90)

    cam.Start3D2D(DrawPos, DrawAngles, 0.4)

        surface.SetDrawColor(25, 25, 25, 255)
        surface.DrawRect(0, 0, 558, 290)

        draw.RoundedBox(4, 0, 0, 558, 30, Color(15, 125, 50, 255))

        draw.DrawNonParsedSimpleText(DarkRP.getPhrase("laws_of_the_land"), "CloseCaption_Bold", 279, 2, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)

        local col = Color(255, 255, 255, 255)
        local lastHeight = 0
        for k, v in ipairs(Laws) do
            draw.DrawNonParsedText(string.format("%u. %s", k, v), "i_like_dis_font", 5, 35 + lastHeight, col)
            lastHeight = lastHeight + (fn.ReverseArgs(string.gsub(v, "\n", "")) + 1) * 21
        end

    cam.End3D2D()
end

local function addLaw(inLaw)
    local law = DarkRP.textWrap(inLaw, "TargetID", 522)

    local lawNumber = table.insert(Laws, law)
    hook.Run("addLaw", lawNumber, inLaw)
end

local function umAddLaw(um)
    local law = um:ReadString()
    timer.Simple(0, fn.Curry(addLaw, 2)(law))
end
usermessage.Hook("DRP_AddLaw", umAddLaw)

local function umRemoveLaw(um)
    local i = um:ReadShort()

    local removed = table.remove(Laws, i)
    hook.Run("removeLaw", i, removed)
end
usermessage.Hook("DRP_RemoveLaw", umRemoveLaw)

local function umResetLaws(um)
    Laws = {}
    fn.Foldl(function(val,v) addLaw(v) end, nil, GAMEMODE.Config.DefaultLaws)
    hook.Run("resetLaws")
end
usermessage.Hook("DRP_ResetLaws", umResetLaws)

function DarkRP.getLaws()
    return Laws
end

timer.Simple(0, function()
    fn.Foldl(function(val,v) addLaw(v) end, nil, GAMEMODE.Config.DefaultLaws)
end)
