--[[

-- write / create note item with metadata


-- create note item
RegisterCommand('note', function()
    -- variable for header / content
    local hd, ct

    local input = lib.inputDialog(locale('itm_note_create'),
    {locale('itm_note_header'), locale('itm_note_content')})

    if not input then return end
    hd, ct = input[1], input[2]
    print(json.encode(input), hd, ct)

    local note = lib.alertDialog({
        header = hd,
        content = ct,
        centered = true, size = 'md',
        overflow = true, labels = {
            confirm = locale('itm_note_putaway')
        }
    })

    print(note)
end, false)

]]