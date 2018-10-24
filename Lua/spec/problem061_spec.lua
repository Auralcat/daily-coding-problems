describe('Problem 061', function ()
    -- Point the path to the right place.
    package.path = "../?.lua" .. package.path
    local problem061 = require('problem061')

    it('should be able to find horizontal matches', function ()
       assert.is_true(problem061.alt_pow(2, 10) == 1024)
       assert.is_true(problem061.alt_pow(3, 4) == 81)
    end)
end)
