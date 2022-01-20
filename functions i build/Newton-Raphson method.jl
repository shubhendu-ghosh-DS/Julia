#Here is the function that calculates the root using Newton-Raphson method
function newton(f1, f2, a, b, iteration)
    count = 0
    x0 = b
    while count <= iteration 
        x1 = x0 - (f1(x0)/f2(x0))
        x0 = x1
        count += 1
    end
    return x0
end


#Here are example function and its  differentiation
function original(x)
    val = exp(x) - 3*x
    return val
end

function derivative(x)
    val = exp(x) - 3
    return val
end


#calling the function
newton(original, derivative, 1, 2, 30)


#Here is another
function org(x)
    val = 3*x - cos(x) - 1
    return val
end


function der(x)
    val = 3 + sin(x)
    return val
end

#calling the function 
newton(org, der, 0, 1, 30)
