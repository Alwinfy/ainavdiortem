Gamestate = require 'libs.hump.gamestate'

states = {}
states.menu = require 'states.menu'
states.pause = require 'states.pause'
states.swoleTim = require 'states.swoleTim' -- I was experimenting with the love callbacks with this :P
states.debug = require 'states.debug'
states.game = require 'states.game'

function love.load()
    love.graphics.setNewFont(24)
    -- Overwrite all love callbacks to the library that manages game states
    Gamestate.registerEvents()
    -- Switch to main menu
    Gamestate.switch(states.debug)
end