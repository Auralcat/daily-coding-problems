-- You need to initialize a table for exporting the module.
problem063 = {}

-- This is pretty much an implementation of a reduce function.
function joinWord(letterRow)
    local out = ''

    for i = 1, #letterRow do
        out = out .. letterRow[i]
    end

    return out
end

-- Returns a single vertical word for the given column
function getVerticalWord(matrix, column)
    local out = ''

    for i = 1, #matrix do
        out = out .. matrix[i][column]
    end

    return out
end

function problem063.canFormWord(matrix, word)
    -- Here it's more useful to return the boolean as soon as a match is found.
    for i = 1, #matrix do
        if joinWord(matrix[i]) == string.upper(word)
        or getVerticalWord(matrix, i) == string.upper(word) then
            return true
        end
    end

    return false
end

test_matrix = {{ 'F', 'A', 'C', 'I' },
               { 'O', 'B', 'Q', 'P' },
               { 'A', 'N', 'O', 'B' },
               { 'M', 'A', 'S', 'S' }}

return problem063
