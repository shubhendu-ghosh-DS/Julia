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
