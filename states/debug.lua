local debug = {}

local selected = 1
local numStates = 0

local function countStates()
    for state, obj in pairs(states) do
        numStates = numStates + 1
    end
end

-- Go to state with index == selected
local function goToState()
    local i = 1
    for state, obj in pairs(states) do
        if i == selected then
            Gamestate.switch(obj)
        end
        i = i + 1
    end
end

function debug:enter()
    countStates()
    love.graphics.setColor(255, 255, 255)
end

function debug:draw()
    local list = 'you found the hidden debug menu :o\n\nList of states:'
    local i = 1
    for state, obj in pairs(states) do
        list = list .. '\n' 
        if i == selected then
            list = list .. '*'
        end
        list = list .. state
        i = i + 1
    end
    list = list .. '\n\nMove with arrow keys, change to selected game state with Enter'
    love.graphics.print(list, 20, 20)
end

function debug:keypressed(key)
    if key == 'up' then
        selected = selected - 1
        if selected < 1 then
            selected = numStates
        end
    end
    if key == 'down' then
        selected = selected + 1
        if selected > numStates then
            selected = 1
        end
    end
end

function debug:keyreleased(key)
    if key == 'return' then
        goToState()
    end
end

return debug