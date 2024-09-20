
lib.locale()

Util = {}

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

Util.Notify = function(d, t)
    lib.notify({
        id = d.id, title = d.title, description = d.description,
        duration = NotInfo.duration, showDuration = NotInfo.showduration,
        position = NotInfo.position,
        style = {
            backgroundColor = t.color_bgnd, color = t.color_text,
            ['.description'] = { color = t.color_desc }
        },
        icon = t.icon_disp, iconColor = t.color_icon,
        iconAnimation = t.icon_anim
    })
end