
--------------------------------
----    Helpful Links   ----
-- https://www.w3schools.com/colors/colors_picker.asp For HTML Colors
-- https://fontawesome.com/search?m=free&o=r For Choosing Icons
-- https://overextended.dev/ox_lib/Modules/Interface/Client/notify Notification Documentation

----    Notification Options    ----
NotInfo = {
    position = 'top',
    duration = 5000,
    showduration = true,
}

-- blue
Inf = {
    color_bgnd = '#004466', color_text = '#ffffff', color_desc = '#ffffff',
    color_icon = '#ffffff', icon_disp = 'question', icon_anim = 'beat'
}

-- red
Err = {
    color_bgnd = '#660000', color_text = '#ffffff', color_desc = '#ffffff',
    color_icon = '#ffffff', icon_disp = 'xmark', icon_anim = 'beat'
}

-- green
Cor = {
    color_bgnd = '#006644', color_text = '#ffffff', color_desc = '#ffffff',
    color_icon = '#ffffff', icon_disp = 'check', icon_anim = 'beat'
}

-- yellow
War = {
    color_bgnd = '#FF7627', color_text = '#ffffff', color_desc = '#ffffff',
    color_icon = '#ffffff', icon_disp = 'exclamation', icon_anim = 'beat'
}


Ifc.DoNotif= function(data, type)
    lib.notify({
        id = data.id, title = data.title, description = data.description,
        duration = NotInfo.duration, showDuration = NotInfo.showduration,
        position = NotInfo.position,
        style = {
            backgroundColor = type.color_bgnd,
            color = type.color_text,
            ['.description'] = { color = type.color_desc }
        },
        icon = type.icon_disp, iconColor = type.color_icon,
        iconAnimation = type.icon_anim
    })
end