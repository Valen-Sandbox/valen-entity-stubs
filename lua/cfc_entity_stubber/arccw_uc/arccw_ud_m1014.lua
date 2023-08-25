AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ud_m1014" )
    weapon.Damage = 15 -- Orig: 18
    weapon.DamageMin = 7 -- Orig: 10
end )