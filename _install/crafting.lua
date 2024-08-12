return {
	-- drug - sativa
	{
		items = {
			name = 'pc_sativa', duration = 5000, count = 3,
			ingredients = { wd_sativa = 2 }
		}
	},
	{
		items = {
			name = 'bc_sativa', duration = 5000, count = 1,
			ingredients = { pc_sativa = 4 }
		}
	},

	-- drug indica
	{
		items = {
			name = 'pc_indica', duration = 5000, count = 3,
			ingredients = { wd_indica = 2 }
		}
	},
	{
		items = {
			name = 'bc_indica', duration = 5000, count = 1,
			ingredients = { pc_indica = 4 }
		}
	},

	-- drug hybrid
	{
		items = {
			name = 'pc_hybrid', duration = 5000, count = 3,
			ingredients = { wd_hybrid = 2 }
		}
	},
	{
		items = {
			name = 'bc_hybrid', duration = 5000, count = 1,
			ingredients = { pc_hybrid = 4 }
		}
	},

	-- drug meth
	{
		items = {
			name = 'pd_meth', duration = 5000, count = 2,
			ingredients = { chem_phsrus = 2, chem_iodine = 2, chem_psdnrn = 1 }
		}
	},
	{
		items = {
			name = 'cr_meth', duration = 5000, count = 2,
			ingredients = { chem_phsrus = 2, chem_iodine = 2, chem_psdnrn = 1, chem_actone = 1 }
		}
	},
	{
		items = {
			name = 'bc_meth', duration = 5000, count = 2,
			ingredients = { cr_meth = 2 }
		}
	},

	-- drug cocaine
	{
		items = {
			name = 'pc_cocaine', duration = 5000, count = 2,
			ingredients = { wd_cocaine = 2, WEAPON_JERRYCAN = 0.05 }
		}
	},
	{
		items = {
			name = 'bc_cocaine', duration = 5000, count = 2,
			ingredients = { pc_cocaine = 2 }
		}
	},
}
