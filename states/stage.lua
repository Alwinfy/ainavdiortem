Class = require 'libs.hump.class'

local Stage = Class{
    init = function(self, name)
        self.name = name
    end
}

function Stage:enter()
    loadStage(self.name)
end

return Stage