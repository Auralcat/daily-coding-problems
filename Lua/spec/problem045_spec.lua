describe('Problem 045', function ()
    -- Point the path to the right place.
    package.path = "../?.lua" .. package.path
    local problem045 = require('problem045')

    it('should just work', function ()
        assert.truthy('Yup')
    end)

    it('should have an equal chance of picking each number', function ()
        local frequency = {}
        local tolerance = 1000
        for i = 1,7000,1 do
            local current = problem045.rand7()
            if not frequency[current] then
                frequency[current] = 1
            else
                frequency[current] = frequency[current] + 1
            end
        end

        for _k,v in pairs(frequency) do
            assert.is_true(v <= (1000 * 1.05) and v >= (1000 * 0.95))
        end
    end)
end)
