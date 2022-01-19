# this is a simple function  that detects the sign of function values 
#we need this later on 
function signof(x)
    if x < 0
        sign = -1
    else
        sign = 1
    end
    return sign
end

function bisection(f,a,b,iteration)
    count = 0
    p = a
    while count < iteration
        fa = f(a)
        fb = f(b)
        p = (a + b)/2
        fp = f(p)
        if signof(fa) == signof(fp)
            a = p
        else
            b = p
        end
        count = count + 1
    end
    return p
end
