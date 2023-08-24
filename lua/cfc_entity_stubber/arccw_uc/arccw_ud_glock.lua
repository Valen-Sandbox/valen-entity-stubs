AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local weapon = cfcEntityStubber.getWeapon( "arccw_ud_glock" )
    weapon.SightTime = 0.125 -- Orig: 0.25
    weapon.JumpDispersion = 850 -- Orig: 1000
    weapon.Delay = 60 / 575 -- Orig: 60 / 525
end )