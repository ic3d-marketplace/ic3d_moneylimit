fx_version 'cerulean'
game 'gta5'
description 'IC3D'
lua54 'yes'


shared_scripts {
'@es_extended/imports.lua'
}


server_scripts {
"server.lua",
"@mysql-async/lib/MySQL.lua"
}

client_scripts {
"client.lua"
}

dependencies {
	'es_extended',
}
