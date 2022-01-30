function weddle(f, a, b)
    h = (b - a)/6
    I = (3*h/10)*(f(a) + 5*f(a + h) + f(a + 2*h) + 6*f(a + 3*h) + f(a + 4*h) + 5*f(a + 5*h) + f(b))
    return I
end



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
