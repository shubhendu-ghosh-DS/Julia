#This is the function for finding the root using fixed point iteration
function fixed_point(f, a, b, iteration)
    p =0
    x0 = a
    while p <= iteration
        x = f(x0)
        x0 =x
        p += 1
    end
    return x0
end

#this is an example function 
function f2(x)
    val = cos(x) - 2*x + 3
    val_mod = (cos(x) + 3)/2
    return val_mod
end
