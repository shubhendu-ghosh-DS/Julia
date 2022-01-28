
function simpson(f, lower_limit, upper_limit)
    a = lower_limit
    b = upper_limit
    h = (b - a)/2
    I = (h/3)*(f(a) + 4*f(a + h) + f(b))
    return I
end
