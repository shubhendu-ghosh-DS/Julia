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




#uploading some functions 
function function_a(x)
    val = x - sin(x) - 1/2
    return val
end

function function_b(x)
    val = x^6 - x^4 - x^3 - 1
    return val
end

function function_c(x)
    val = x^3 - 3*x - 5
    return val
end

function function_d(x)
    val = x*exp(x) - cos(x)
    return val
end

function function_e(x)
    val = tan(x) + x
    return val
end

function function_f(x)
    val = x + log(x) - 2
    return val
end

#creating a vector of functions
function_list = [function_a, function_b, function_c, function_d, function_e, function_f]

