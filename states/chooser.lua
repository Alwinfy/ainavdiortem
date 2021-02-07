local Chooser = Class{
    selected = 1,
    title = 'No title given',
    states = {'Hello', 'World', 'foo', 'bar'},
    init = function(self, title, states, select)
        -- For some weird reason it doesn't work without the comparison, idk why Lua
        if title ~= nil then
            self.title = title
        end
        if states ~= nil then
            self.states = states
        end
        if select ~= nil then
            self.select = select
        end
    end,
}

function Chooser:enter()
    love.graphics.setColor(255, 255, 255)
end

function Chooser:draw()
    local list = self.title .. '\n\nList of states:'
    for i, state in ipairs(self.states) do
        list = list .. '\n'
        if i == self.selected then
            list = list .. '*'
        end
        list = list .. state
    end
    list = list .. '\n\nMove with arrow keys, select with Enter'
    love.graphics.print(list, 20, 20)
end

function Chooser:keypressed(key)
    if key == 'up' then
        self.selected = self.selected - 1
        if self.selected < 1 then
            self.selected = #self.states
        end
    end
    if key == 'down' then
        self.selected = self.selected + 1
        if self.selected > #self.states then
            self.selected = 1
        end
    end
end

function Chooser:keyreleased(key)
    if key == 'return' then
        self.select(self.selected)
    end
end

return Chooser