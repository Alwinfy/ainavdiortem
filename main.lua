Gamestate = require 'libs.hump.gamestate'

states = {}
states.menu = require 'states.menu'
states.pause = require 'states.pause'
states.swoleTim = require 'states.swoleTim' -- I was experimenting with the love callbacks with this :P
states.debug = require 'states.debug'
states.game = require 'states.game'
states.physics = require 'states.physics' -- Original love.physics state

function unpause()
    if Gamestate.current() == states.pause then
        Gamestate.pop()
    end
end

function pause()
    if Gamestate.current() ~= states.menu and Gamestate.current() ~= states.pause then
        Gamestate.push(states.pause)
    end
end

function togglePause()
    if Gamestate.current() == states.pause then
        unpause()
    else
        pause()
    end
end

function love.focus(gainsFocus)
    if gainsFocus then
        unpause()
    else
        pause()
    end
end

function love.keyreleased(key)
    print('key ' .. key .. ' released')
    -- F3 opens the debug menu
    if key == 'f3' then
        Gamestate.switch(states.debug)
    end
    -- Esc opens or closes the pause screen (if not on main menu or pause screen)
    if key == 'escape' then
        togglePause()
    end
end

function love.load()
    love.graphics.setNewFont(24)
    -- Overwrite all love callbacks to the library that manages game states
    Gamestate.registerEvents()
    -- Switch to main menu
    Gamestate.switch(states.debug)
end