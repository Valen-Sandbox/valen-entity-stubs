AddCSLuaFile()

local clamp = math.Clamp
local huge = math.huge

cfcEntityStubber.registerStub( function()
    local turret = scripted_ents.GetStored( "gmod_turret" ).t

    local setDamage = turret.SetDamage
    local setSpread = turret.SetSpread
    local setDelay = turret.SetDelay

    turret.SetDamage = function( ent, damage )
        damage = clamp( damage, 0, 30 )
        setDamage( ent, damage )
    end

    turret.SetSpread = function( ent, spread )
        spread = clamp( spread, 0.02, 1 )
        setSpread( ent, spread )
    end

    turret.SetDelay = function( ent, delay )
        delay = clamp( delay, 0.05, huge )
        setDelay( ent, delay )
    end
end )