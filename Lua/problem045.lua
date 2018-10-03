-- You need to initialize a table for exporting the module.
problem045 = {}

local function rand5()
    return math.random(5)
end

-- The #size method only counts INTEGER values in the array.
-- Since we're winging a set with the table data type, we need
-- another function to properly count the elements.
local function tableLength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    -- TODO: Pick a key from the table and return it as a random number.
    return count
end

function problem045.rand7()
    local collection = {[6] = true, [7] = true}
    while tableLength(collection) < 7 do
        collection[rand5()] = true
    end
    -- This is just a wrapper for the actual random value.
    -- Again, this is not supposed to be used in production.
    pick = math.random(#collection)
    if collection[pick] then
        return pick
    end
end

-- Random needs to be seeded outside of the generator function,
-- otherwise it will be repeating the same result.
math.randomseed(os.time())

return problem045
