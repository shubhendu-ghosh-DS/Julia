# julia
## some functions i built for mathematical (numerical) calculations 

### going into the functions one by one 
## 1. Bisection method (_half-interval method_ or _Bolzano method_ )
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


## 2. __Fixed point iteration__ (_successive approximation_)
  To find the root of the equation f(x) = 0 we first rewrite the function in the form x = g(x).  
  and then if ~~alpha~~ be the root of the equation f(x) = 0 , we must have ~~alpha~~  = g(~~alpha~~).
  let x = x0 be the initial approximation of the eq. then 
  x1 = g(x0) then x1 is our second approximation , now
  x2 = g(x1) and so on ... 
  
  for more information [click here](https://atozmath.com/example/CONM/Bisection.aspx?he=e&q=it) or [here](https://math.iitm.ac.in/public_html/sryedida/caimna/transcendental/iteration%20methods/fixed-point/iteration.html)
  

## 3.__Newton-Raphson method__ 
  the basic formula for this method is 
  Xn+1 = Xn - f(Xn)/f'(Xn)
  where f'(X) is the derivative of f 
  
  for more information   [click here](https://brilliant.org/wiki/newton-raphson-method/#:~:text=The%20Newton%2DRaphson%20method%20(also,straight%20line%20tangent%20to%20it. )
  
  
## 4. __Regula-Falsi method__ (_method of false position_)
   To learn more about regula falsi method or method of false position plese refer to these two pages 
   [this](https://www.goseeko.com/blog/what-is-regula-falsi-method/) and [This](https://en.wikipedia.org/wiki/Regula_falsi)
 
 
