local Stage = Class{
    name = 'level2',
    init = function(self, name)
        if name ~= nil then
            self.name = name
        end
    end
}

function Stage:enter()
    loadStage(self.name)
end

return Stage