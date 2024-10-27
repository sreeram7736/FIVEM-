fx_version 'cerulean'
game 'gta5'

author 'Your Name'
description 'Custom HUD with Health and Shield Bars for ESX Legacy'
version '1.0.0'

client_script 'client.lua'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

-- Specify ESX as a dependency
dependencies {
    'es_extended'
}
