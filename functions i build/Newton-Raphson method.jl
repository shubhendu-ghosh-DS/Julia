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
