function SimpsonsTE(f, lower_limit, upper_limit)
    a = lower_limit
    b = upper_limit
    h = (b - a)/3
    I = (3*h/8)*(f(a) + 3*f(a + h) + 3*f(a + 2*h) + f(b))
    return I
end


function threes(limit)
    D =[]
    if limit%3 != 0
        return "this number is not divisible by three"
    else 
        for i in 1:limit - 1
            if i%3 == 0
                append!(D, i)
            end
        end
    end
    return D
end



function sumthree(f, a, b, n)
    h = (b - a)/n
    sum = 0
    for i in threes(n)
        sum += f(a + i*h)
    end
    return sum
end



function notthrees(n)
    D =[]
    for i in 1:n - 1
        if i%3 != 0
            append!(D, i)
        end
    end
    return D
end




function sumnt(f, a, b, n)
    sum = 0
    h = (b - a)/n
    for i in notthrees(n)
        sum += f(a + i*h)
    end
    return sum
end




function CompositeSTE(f, a, b, n)
    h = (b - a)/n
    I = (3*h/8)*(f(a) + f(b) + 3*(sumnt(f, a, b, n)) + 2*(sumthree(f, a, b, n)))
    #println("$(f(a) + f(b)) \n $(sumnt(f, a, b, n)) \n $(sumthree(f, a, b, n))")
    return I
end
