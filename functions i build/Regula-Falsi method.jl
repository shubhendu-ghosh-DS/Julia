#here is the function for calculate root of equation by regula falsi method 
function regula(f, x0, x1, iteration)
    count = 0
    x = x0
    while count <= iteration 
        x = x1 - (f(x1)/(f(x1) - f(x0)))*(x1 - x0)
        if x == x1
            break
        end
        x0 = x1
        x1 = x
        count += 1
    end
    return x
end

#check the method by some example function 
function a(x)
    val = x^3 - 2*x - 5
    return val
end

function b(x)
    val = x^3 + x^2 - 1
    return val
end


function c(x)
    return x^2 + 4*sin(x)
end

function d(x)
    return x*exp(x) - cos(x)
end


function e(x)
    return 2*(x^3) - 3*x - 6
end


#call the functions 
regula(a, 2, 3, 30)
regula(c, -2, 1, 30)
regula(d, 1,2,30)
regula(e, 0, 1, 30)
