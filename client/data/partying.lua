local table = {
    model = lib.requestModel('h4_prop_h4_table_isl_01a'),
    glass = lib.requestModel('prop_glass_stack_08'),

    rum = lib.requestModel('prop_rum_bottle'),
    vod = lib.requestModel('prop_vodka_bottle'),
    wsk = lib.requestModel('prop_cs_whiskey_bottle'),
    teq = lib.requestModel('prop_tequila_bottle'),
    cog = lib.requestModel('prop_bottle_cognac'),
    brb = lib.requestModel('prop_bottle_brandy'),

}

RegisterCommand('ptable', function()

end, false)