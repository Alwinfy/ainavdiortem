local Chooser = require 'states.chooser'

local numStates = 0
local stateList = {}

for state, obj in pairs(states) do
    table.insert(stateList, state)
end

table.sort(stateList)

local function goToState(i)
    Gamestate.switch(states[stateList[i]])
end

return Chooser('you found the hidden debug menu :o', stateList, goToState)