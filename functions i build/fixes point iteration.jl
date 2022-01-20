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
    val = 2*x - log(x)/log(10) - 7
    val_mod = (7 + log(x)/log(10))/2
    return val_mod
end



#applying fixed point iteration in [3,4]
fixed_point(f2, 3, 4, 30)

