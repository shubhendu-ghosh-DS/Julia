
function trapezoidal(f, lower_limit, upper_limit)
    a, b = lower_limit, upper_limit
    h = b - a
    I = h*(f(a) + (1/2)*(f(b) - f(a)))
    return I
end



function CompositeT(f, lower_limit, upper_limit, sub_intervals)
    a, b, n = lower_limit, upper_limit, sub_intervals
    h = (b - a)/n
    sum =0
    for i in 1:n-1
        sum = sum+ f(a + i*h)
    end
    I = (1/2)*h*((f(a) + f(b)) + 2*sum)
    return I
end



function one(x)
    return 1/(1 + x^2)
end
