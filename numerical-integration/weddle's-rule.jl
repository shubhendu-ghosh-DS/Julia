
#This is the function for weddle rule taking n=6, a = X0, b = x6 in the general formula 
function weddle(f, a, b)
    h = (b - a)/6
    I = (3*h/10)*(f(a) + 5*f(a + h) + f(a + 2*h) + 6*f(a + 3*h) + f(a + 4*h) + 5*f(a + 5*h) + f(b))
    return I
end


#this is a special function built for this method. It returns a 1D array of all the numbers that are divisible by 6
#except the last one. 
#Note: this function takes values that are only divisible by 6
function sixes(n)
    D = []
    if n%6 != 0
        println("This number is not divisible by 6")
    else
        for i in 1:n-1
            if i%6 == 0
                append!(D,i)
            end
        end
        return D
    end
end


#this function is quite similar to that of the previous one. it returns values that are divisible by 3 excluding those that are divisible by 6
#this one also takes values as arguments that are only divisible by 6
function threes(n)
    if n%6 == 0
        D =[]
        for i in 1:n-1
            if i%3 == 0
                if i ∈ sixes(n)
                    continue
                else
                    append!(D, i)
                end
            end
            
        end
        return D
    else
        println("this number is not divisible by 6")
    end
end


#this function returns all the even values in a range except those that are divisible by 6
function twos(n)
    if n%6 ==0
        D = []
        for i in 1:n-1
            if i ∈ vcat(threes(n), sixes(n))
                continue
            else
                if i%2 == 0
                    append!(D, i)
                end
            end
        end
        return D
    else
        println("this number is not divisible by 6")
    end
end
        



#this function returns all the values left in the range that not covered by any of the previous functions
function oddsleft(n)
    if n%6 == 0
        D =[]
        for i in 1:n-1
            if i ∈ vcat(sixes(n), threes(n), twos(n))
                continue
            else
                append!(D, i)
            end
        end
        return D 
    else
        println("this number is not divisible by 6")
    end
end



function sumtwo(f,a, b, n)
    h = (b - a)/n
    sum = 0
    for i in twos(n)
        sum += f(a + i*h)
    end
    return sum
end



function sumone(f,a, b, n)
    h = (b - a)/n
    sum = 0
    for i in oddsleft(n)
        sum += f(a + i*h)
    end
    return sum
end



function sumthree(f, a, b, n)
    h = (b - a)/n
    sum = 0
    for i in  threes(n)
        sum += f(a + i*h)
    end
    return sum
end



function sumsix(f, a, b, n)
    h = (b - a)/n
    sum = 0
    for i in sixes(n)
        sum += f(a + i*h)
        
    end
    return sum
end




function CompositeW(f, a, b, n)
    h = (b -a)/n
    I =(3*h/10)*((f(a) + f(b)) + sumtwo(f, a, b, n) + 5*sumone(f, a, b, n) + 6*sumthree(f, a, b, n) + 2*sumsix(f, a, b, n))
    return I
end





function one(x)
    return 1/(1 + x^2)
end


function two(x)
    return (sqrt(x)*exp(-x))
end


function p(x)
    val = log(x)
    return val
end



weddle(one, 0, 1)
CompositeW(one, 0, 1, 30)

CompositeW(two, 0.5, 0.7, 24)

CompositeW(p, 4.0, 5.2, 12)
