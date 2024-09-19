
-- game / build information
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean' lua54 'yes' game 'gta5'

-- resource information
repository 'https://github.com/Mesa-Indigo/mi_items'
description 'ox_core based script'
author 'Agimir' name 'mi_items' version '1.1.0'
license 'LGPL-3.0-or-later'

-- resource dependencies
dependencies {
    'oxmysql',
    'ox_lib',
    'ox_inventory'
}

-- shared files
shared_scripts {
    '@ox_lib/init.lua',
    'source/shared/*.lua',
    'data/*.lua', 'config.lua'
}

-- client files
client_scripts {
    'source/client/**/*.lua'
}

-- server files
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'source/server/**/*.lua'
}

-- resource files
files {
    'data/locale/*.json'
}