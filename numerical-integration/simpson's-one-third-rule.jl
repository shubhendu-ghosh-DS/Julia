
function simpson(f, lower_limit, upper_limit)
    a = lower_limit
    b = upper_limit
    h = (b - a)/2
    I = (h/3)*(f(a) + 4*f(a + h) + f(b))
    return I
end


function get_odd(p)
    D =[]
    for i in 1:p
        if i%2 == 1
            append!(D, i)
        end
    end
    return D
end


function get_even(p)
    D =[]
    for i in 1:p
        if i%2 == 0
            append!(D, i)
        end
    end
    return D
end


function odd_sum(f, a, h, limit)
    sum = 0
    for i in get_odd(limit)
        sum += f(a + i*h)
    end
    return sum
end


function even_sum(f, a, h, limit)
    sum = 0
    for i in get_even(limit)
        sum += f(a + i*h)
    end
    return sum
end


function CompositeS(f, lower_limit, upper_limit, iteration)
    a = lower_limit
    b = upper_limit
    n = iteration
    h = (b - a)/n
    I = (h/3)*((f(a) + f(b)) + 4*odd_sum(f, a, h, n) + 2*(even_sum(f,a, h, n) - f(b)))
    return I
end
