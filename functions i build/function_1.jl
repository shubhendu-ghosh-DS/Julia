function SquareRoot(n)
    p = 13      #this is the number of iteration
    u = 1       
    x = n - 2
    while u < p
        y = (1/2)*(x + n/x)
        println(y)
        if y == x         #stopping the function to iterate any further if it has converged
            break
        end
        x = y
        u = u + 1
    end
end


#Calling the function
SquareRoot(625)
