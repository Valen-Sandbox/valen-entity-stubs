AddCSLuaFile()

cfcEntityStubber.registerStub( function()
    local att = cfcEntityStubber.getAttachmentArcCW( "ur_spas12_barrel_hl" )
    att.Override_Firemodes = {
        {
            Mode = 2,
            PrintName = "fcg.slam",
            Override_ManualAction = true,
            Mult_AccuracyMOA = 0.8,
            Mult_HipDispersion = 0.8,
        },
        {
            Mode = 1,
            PrintName = "ur.spas12.dbl",
            Override_ManualAction = true,
            Mult_AccuracyMOA = 1.15,
            Mult_HipDispersion = 0.8,

            Mult_Num = 1.5, -- Orig: 2
            Override_AmmoPerShot = 2,
            Mult_Damage = 1.5, -- Orig: 2
            Mult_DamageMin = 1.5, -- Orig: 2
            Mult_Recoil = 1.5,
            CustomBars = "--___",
        },
        {
            Mode = 0,
        },
    }
    cfcEntityStubber.applyAttachmentChangeArcCW( "ur_spas12_barrel_hl", att )
end )