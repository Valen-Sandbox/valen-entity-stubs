AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ud_m1014" )
    weapon.Damage = 16 -- Orig: 18
    weapon.DamageMin = 8 -- Orig: 10
end )