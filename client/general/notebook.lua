-- write / create note item with metadata


-- create note item
RegisterCommand('note', function()
    -- variable for header / content
    local write = { hd = '', ct = '' }

    local input = lib.inputDialog(locale('itm_note_create'),
    {locale('itm_note_header'), locale('itm_note_content')})
 
    if not input then return end
    print(json.encode(input), input[1], input[2])
    write.hd, write.ct = input{1}, input{2}

    local note = lib.alertDialog({
        header = write.hd,
        content = write.ct,
        centered = true, size = 'lg',
        overflow = true, labels = {
            confirm = 'Put Note Away'
        }
    })

    print(note)
end, false)

