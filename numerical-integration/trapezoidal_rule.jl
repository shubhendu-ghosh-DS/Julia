#This is the function that works on the Trapezoidal rule formula 
function trapezoidal(f, lower_limit, upper_limit)
    a, b = lower_limit, upper_limit
    h = b - a
    I = h*(f(a) + (1/2)*(f(b) - f(a)))
    return I
end


# This is the function that works on Composite Trapezoidal rule
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


#these are some function whose integration we want to calculate in certain interval
function one(x)
    return 1/(1 + x^2)
end



function two(x)
    return x + 1/x
end


#Calling the function for both the rule
trapezoidal(one, 0, 1)
CompositeT(one, 0, 1, 6)



CompositeT(two, 1.2, 1.6, 100)
trapezoidal(two, 1.2, 1.6)
