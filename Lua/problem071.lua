-- You need to initialize a table for exporting the module.
problem071 = {}

local function rand7()
    return math.random(7)
end

-- The #size method only counts INTEGER values in the array.
-- Since we're winging a set with the table data type, we need
-- another function to properly count the elements.
local function tableLength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end

function problem071.rand5()
    local out = rand7()
    while out > 5 do
        out = rand7()
    end
    return out
end

-- Random needs to be seeded outside of the generator function,
-- otherwise it will be repeating the same result.
math.randomseed(os.time())

return problem071
