function rand5()
    return math.random(5)
end

-- The #size method only counts INTEGER values in the array.
-- Since we're winging a set with the table data type, we need
-- another function to properly count the elements.
function tableLength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end

function rand7()
    local collection = {[6] = true, [7] = true}
    while tableLength(collection) < 7 do
        collection[rand5()] = true
    end
    return collection
end

-- Random needs to be seeded outside of the generator function,
-- otherwise it will be repeating the same result.
math.randomseed(os.time())

for k, v in pairs(rand7()) do
    print(k, v)
end
