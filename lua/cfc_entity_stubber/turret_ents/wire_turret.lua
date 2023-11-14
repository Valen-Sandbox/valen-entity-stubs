AddCSLuaFile()

local clamp = math.Clamp

cfcEntityStubber.registerStub( function()
    local turret = scripted_ents.GetStored( "gmod_wire_turret" ).t

    local setDamage = turret.SetDamage
    local setSpread = turret.SetSpread

    turret.SetDamage = function( ent, damage )
        damage = clamp( damage, 0, 30 )
        setDamage( ent, damage )
    end

    turret.SetSpread = function( ent, spread )
        spread = clamp( spread, 0.02, 1 )
        setSpread( ent, spread )
    end
end )