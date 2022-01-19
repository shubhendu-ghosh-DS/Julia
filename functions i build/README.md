# julia
## some functions i built for mathematical (numerical) calculations 

### going into the functions one by one 
## 1. Bisection method (half-interval method or Bolzano method )
  it is an iterative method for calculate root of an algebric or transcendental equations
    In this method we first find out sufficiently small interval [a0, b0] containing the root by graphical method por tabulation maethod. Then f(a0)f(b0) < 0
    f'(x) has same sign in [a0, b0] and so f(x) is strickly monotonic in [a0, b0]. 
   
  To generate the sequence {xn} of iterates , we put 
  x0 = a0 or b0 and x1 = (a0 + b0)/2 
    and find f(x1). If f(a0) and f(x1) are of opposite signs, 
    then set a1 = a0, b1 = x1 so that [a1, b1] = [a0, x1]. 
    On the other hand , if f(x1) and f(b0) are of opposite signs then put a1 = x1, b1 = b0, 
  i.e. [a1, b1] = [x1, b0] .
   
  Thus we see that [a1, b1] contains the root "alpha" in either case.
    Next set 
  x2 = (a1 + b1)/2 
    and repeat the above process till we obtain 
  Xn+1 = (an + bn)/2 
      with desired accuracy with Xn -> "alpha" as n -> infinity
