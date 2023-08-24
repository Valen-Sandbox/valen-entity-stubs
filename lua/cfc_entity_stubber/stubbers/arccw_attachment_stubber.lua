AddCSLuaFile()
cfcEntityStubber.registerStubber( "arccw_attachment" )

function cfcEntityStubber.getAttachmentArcCW( attachname )
    local att = ArcCW.AttachmentTable[attachname]
    cfcEntityStubber.oldWeaponStats[attachname] = att

    return att
end

function cfcEntityStubber.applyAttachmentChangeArcCW( attachname, att )
    ArcCW.AttachmentTable[attachname] = att
end