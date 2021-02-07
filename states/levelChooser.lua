local Chooser = require 'states.chooser'

local levels = {'test2', 'stage1', 'stage2', 'stage3', 'stage4', 'stage5'}

local function goToLevel(i)
    loadStage(levels[i])
end

return Chooser('Level Select', levels, goToLevel)