describe('Problem 071', function ()
    -- Point the path to the right place.
    package.path = "../?.lua" .. package.path
    local problem071 = require('problem071')

    it('should have an equal chance of picking each number', function ()
        local frequency = {}
        local limit = 1000
        for i = 1, 5000, 1 do
            local current = problem071.rand5()
            if not frequency[current] then
                frequency[current] = 1
            else
                frequency[current] = frequency[current] + 1
            end
        end

        for k,v in pairs(frequency) do
            print(k, v)
            assert.is_true(v <= (limit * 1.05) and v >= (limit * 0.95))
        end
    end)
end)
