-- Helper factory function
function getTestMatrix()
    return {{ 'F', 'A', 'C', 'I' },
            { 'O', 'B', 'Q', 'P' },
            { 'A', 'N', 'O', 'B' },
            { 'M', 'A', 'S', 'S' }}
end

describe('Problem 063', function ()
    -- Point the path to the right place.
    package.path = "../?.lua" .. package.path
    local problem063 = require('problem063')

    it('should be able to find horizontal matches', function ()
        assert.is_true(problem063.canFormWord(getTestMatrix(), 'mass'))
    end)

    it('should be able to find vertical matches', function ()
        assert.is_true(problem063.canFormWord(getTestMatrix(), 'foam'))
    end)
end)
