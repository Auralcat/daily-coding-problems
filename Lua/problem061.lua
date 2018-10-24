-- You need to initialize a table for exporting the module.
problem061 = {}

function problem061.alt_pow(base, exponent)
    if exponent == 0 then
        return 1
    elseif exponent % 2 == 0 then
        return math.pow(problem061.alt_pow(base, exponent / 2), 2)
    else
        return base * problem061.alt_pow(base, exponent - 1)
    end
end

return problem061
