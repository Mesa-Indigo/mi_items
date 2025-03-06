
exports('notebook', function()
    local hd, ct

    local input = lib.inputDialog(locale('itm_note_create'),
    {locale('itm_note_header'), locale('itm_note_content')})

    if not input then return end
    hd, ct = input[1], input[2]
    if Debug then print(json.encode(input), hd, ct) end

    lib.callback.await('miit:create:note', cache.ped, hd, ct)
end)

exports('note', function(data)
    local metadata = data.metadata or {}
    if metadata then
        lib.alertDialog({
            header = metadata.header,
            content = metadata.context,
            centered = true, size = 'md',
            overflow = true, labels = {
                confirm = locale('itm_note_putaway')
            }
        })
    end
end)