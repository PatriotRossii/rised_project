-- "gamemodes\\darkrp\\gamemode\\modules\\workarounds\\sh_workarounds.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
-- Shared part

function DarkRP.getAvailableVehicles()
    local vehicles = list.Get("Vehicles")
    for _, v in pairs(list.Get("SCarsList")) do
        vehicles[v.PrintName] = {
            Name = v.PrintName,
            Class = v.ClassName,
            Model = v.CarModel
        }
    end

    return vehicles
end

local function argError(Val, iArg, sType)
    error(string.format("bad argument #%u to '%s' (%s expected, got %s)", iArg, debug.getinfo(2, "n").name, sType, type(Val)), 3)
end

if system.IsWindows() then
    local osdate = os.date
    local replace = function(txt)
        if txt == "%%" then return txt end -- Edge case, %% is allowed
        return ""
    end

    function os.date(format, time, ...)
        if (isstring(format) or isnumber(format)) then
            format = string.gsub(format, "%%[^aAbBcdHIjmMpSUwWxXyYz]", replace)
        elseif (format ~= nil) then
            argError(Val, 1, "string")
        end

        if (not (time == nil or isnumber(time)) and (not isstring(time) or tonumber(time) == nil)) then
            argError(Val, 2, "number")
        end

        return osdate(format, time, ...)
    end
end

timer.Simple(3, function()
    -- Malicious addons that kicks players this one person doesn't like.
    if istable(Skid) then
        Skid.Check = fn.Id
        hook.Remove("CheckPassword", "Skid.CheckPassword")

        MsgC(Color(0, 255, 0), "SkidCheck", Color(255, 255, 255), " has been ", Color(255, 0, 0), "DISABLED\n", Color(255, 255, 255), [[
        SkidCheck was detected on this server and has been disabled.

        SkidCheck is a ban list addon made by HeX as an attempt to get the people he doesn't like
        banned from as many servers as possible.

        You have probably installed this addon thinking that it would get rid of cheaters, and sure,
        it might get rid of some, but that's only to make you want to download this.

        SkidCheck would ban me (FPtje, developer of DarkRP) from your server because I have a
        workshop addon that he doesn't like and because I know how to throw a prop around
            (type /credits yourname in chat for the full story on that)
        It doesn't just ban /me/ for that, it bans EVERYONE who is subscribed to the addon.

        Can you imagine trying an addon out and getting on this list /just/ because you have
        it installed? That's SkidCheck for you.

        It also bans people who have a VAC ban (even if gotten from another game), people from
        arbitrary groups, /friends/ of people he doesn't like and many, many more.

        I'm not pulling this out of my ass either, you can check everything here:
        http://facepunch.com/showthread.php?t=1483607


        On a somewhat unrelated note, HeX has been known to be malicious for quite some time:
        He used to have an anticheat (called HAC) on his server, which not only misfired from
        time to time, but actively used exploits to fuck "cheaters" up as much as possible,
        doing malicious shit ranging from unbinding keys to removing every friend they had in
        their friends list.

        That too can be fact checked right here:
        http://facepunch.com/showthread.php?t=1416320

        DO NOT trust this guy to decide who gets banned from your server. In fact,
        DO NOT EVER TRUST ANYONE with that power. No one ever should have the power
        to decide who gets banned and who doesn't over the servers that decide to install
        their addon.
]])
    end
end)

if game.SinglePlayer() or GetConVar("sv_lan"):GetBool() then
    local plyMeta = FindMetaTable("Player")

    if SERVER then
        local sid64 = plyMeta.SteamID64

        function plyMeta:SteamID64(...)
            return sid64(self, ...) or "0"
        end
    end

    local aid = plyMeta.AccountID

    function plyMeta:AccountID(...)
        return aid(self, ...) or 0
    end
end

-- Clientside part
if CLIENT then
    local cams3D, cams2D = 0, 0
    local cam_Start = cam.Start

    function cam.Start(tbl, ...)
        -- https://github.com/Facepunch/garrysmod-issues/issues/3361
        if (not istable(tbl)) then
           argError(tbl, 1, "table")
        end

        if (tbl.type == "3D") then
            cams3D = cams3D + 1
        elseif (tbl.type == "2D") then
            cams2D = cams2D + 1
        else
            error("bad argument #1 to '%s' (bad key 'type' - 2D or 3D expected, got %s)", debug.getinfo(1, "n").name, tbl.type, 2)
        end

        -- Could pcall this but it'd be impossible to
        -- tell if a render instance was created or not.
        -- Assume creation/deletion
        return cam_Start(tbl, ...)
    end

    local cam_End3D = cam.End3D

    function cam.End3D(...)
        if (cams3D == 0) then
            error("tried to end invalid render instance", 2)
        end

        cams3D = cams3D - 1

        return cam_End3D(...)
    end

    local cam_End2D = cam.End2D

    function cam.End2D(...)
        if (cams2D == 0) then
            error("tried to end invalid render instance", 2)
        end

        cams2D = cams2D - 1

        return cam_End2D(...)
    end

    local cams3D2D = 0
    local cam_Start3D2D = cam.Start3D2D

    function cam.Start3D2D(...)
        cams3D2D = cams3D2D + 1

        return cam_Start3D2D(...)
    end

    return
end

-- https://github.com/FPtje/DarkRP/issues/2640
local entsCreate = ents.Create
local entsCreateError = [[
Unable to create entity.

The server has come to a point where it has become impossible to create new
entities. The entity limit has been hit. Try cleaning up the server or
changing level. In the meantime, expect lots of errors coming from a lot of
addons.

If you do decide to send a bug report to ANY addon, please include this
message.]]

local function varArgsLen(...)
    return {...}, select("#", ...)
end

function ents.Create(name, ...)
    local res, len = varArgsLen(entsCreate(name, ...))

    if res[1] == NULL and ents.GetEdictCount() >= 8176 then
        DarkRP.error(entsCreateError, 2, { string.format("Affected entity: '%s'", name) })
    end

    return unpack(res, 1, len)
end

--[[---------------------------------------------------------------------------
Generic InitPostEntity workarounds
---------------------------------------------------------------------------]]
hook.Add("InitPostEntity", "DarkRP_Workarounds", function()
    local commands = concommand.GetTable()
    if commands["durgz_witty_sayings"] then
        game.ConsoleCommand("durgz_witty_sayings 0\n") -- Deals with the cigarettes exploit. I'm fucking tired of them. I hate having to fix other people's mods, but this mod maker is retarded and refuses to update his mod.
    end

    -- Remove ULX /me command. (the /me command is the only thing this hook does)
    hook.Remove("PlayerSay", "ULXMeCheck")

    -- why can people even save multiplayer games?
    -- Lag exploit
    if not game.SinglePlayer() then
        concommand.Remove("gm_save")
    end

    -- Remove that weird rooftop spawn in rp_downtown_v4c_v2
    if game.GetMap() == "rp_downtown_v4c_v2" then
        for _, v in pairs(ents.FindByClass("info_player_terrorist")) do
            v:Remove()
        end
    end

    if CLIENT then
        hook.Remove("HUDPaint","drawHudVital") -- Removes the white flashes when the server lags and the server has flashbang. Workaround because it's been there for fucking years

        -- Fuck up APAnti
        net.Receivers.sblockgmspawn = nil
        hook.Remove("PlayerBindPress", "_sBlockGMSpawn")
    end
end)

--[[---------------------------------------------------------------------------
Fuck up APAnti. These hooks send unnecessary net messages.
---------------------------------------------------------------------------]]
timer.Simple(3, function()
    hook.Remove("Move", "_APA.Settings.AllowGMSpawn")
    hook.Remove("PlayerSpawnObject", "_APA.Settings.AllowGMSpawn")
end)

--[[---------------------------------------------------------------------------
Wire field generator exploit
---------------------------------------------------------------------------]]
hook.Add("OnEntityCreated", "DRP_WireFieldGenerator", function(ent)
    timer.Simple(0, function()
        if IsValid(ent) and ent:GetClass() == "gmod_wire_field_device" then
            local TriggerInput = ent.TriggerInput
            function ent:TriggerInput(iname, value)
                if iname == "Distance" and isnumber(value) then
                    value = math.min(value, 400)
                end
                TriggerInput(self, iname, value)
            end
        end
    end)
end)

--[[---------------------------------------------------------------------------
Door tool is shitty
Let's fix that huge class exploit
---------------------------------------------------------------------------]]
hook.Add("InitPostEntity", "FixDoorTool", function()
    local oldFunc = makedoor
    if isfunction(oldFunc) then
        function makedoor(ply, trace, ang, model, open, close, autoclose, closetime, class, hardware, ...)
            if class ~= "prop_dynamic" and class ~= "prop_door_rotating" then return end

            oldFunc(ply, trace, ang, model, open, close, autoclose, closetime, class, hardware, ...)
        end
    end
end)

--[[---------------------------------------------------------------------------
Anti crash exploit
---------------------------------------------------------------------------]]
hook.Add("PropBreak", "drp_AntiExploit", function(attacker, ent)
    if IsValid(ent) and ent:GetPhysicsObject():IsValid() then
        constraint.RemoveAll(ent)
    end
end)

local allowedDoors = {
    ["prop_dynamic"] = true,
    ["prop_door_rotating"] = true,
    [""] = true
}

hook.Add("CanTool", "DoorExploit", function(ply, trace, tool)
    if not IsValid(ply) or not ply:IsPlayer() or not IsValid(ply:GetActiveWeapon()) or not ply:GetActiveWeapon().GetToolObject or not ply:GetActiveWeapon():GetToolObject() then return end

    tool = ply:GetActiveWeapon():GetToolObject()
    if not allowedDoors[string.lower(tool:GetClientInfo("door_class") or "")] then
        return false
    end
end)

--[[---------------------------------------------------------------------------
Actively deprecate commands
---------------------------------------------------------------------------]]
local deprecated = {
    {command = "rp_removeletters",      alternative = "removeletters"           },
    {command = "rp_setname",            alternative = "forcerpname"             },
    {command = "rp_unlock",             alternative = "forceunlock"             },
    {command = "rp_lock",               alternative = "forcelock"               },
    {command = "rp_removeowner",        alternative = "forceremoveowner"        },
    {command = "rp_addowner",           alternative = "forceown"                },
    {command = "rp_unownall",           alternative = "forceunownall"           },
    {command = "rp_unown",              alternative = "forceunown"              },
    {command = "rp_own",                alternative = "forceown"                },
    {command = "rp_tellall",            alternative = "admintellall"            },
    {command = "rp_tell",               alternative = "admintell"               },
    {command = "rp_teamunban",          alternative = "teamunban"               },
    {command = "rp_teamban",            alternative = "teamban"                 },
    {command = "rp_setsalary",          alternative = "setmoney"                },
    {command = "rp_setmoney",           alternative = "setmoney"                },
    {command = "rp_revokelicense",      alternative = "unsetlicense"            },
    {command = "rp_givelicense",        alternative = "setlicense"              },
    {command = "rp_unlockdown",         alternative = "unlockdown"              },
    {command = "rp_lockdown",           alternative = "lockdown"                },
    {command = "rp_unarrest",           alternative = "unarrest"                },
    {command = "rp_arrest",             alternative = "arrest"                  },
    {command = "rp_cancelvote",         alternative = "forcecancelvote"         },
}

local lastDeprecated = 0
local function msgDeprecated(cmd, ply)
    if CurTime() - lastDeprecated < 0.5 then return end
    lastDeprecated = CurTime()

    DarkRP.notify(ply, 1, 4, ("This command has been deprecated. Please use 'DarkRP %s' or '/%s' instead."):format(cmd.alternative, cmd.alternative))
end

for _, cmd in pairs(deprecated) do
    concommand.Add(cmd.command, fp{msgDeprecated, cmd})
end
