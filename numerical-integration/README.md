# __Numerical Integration__



 In this section  we derive and analyze numerical methods to evaluate definite integrals of the form
 
![download (12)](https://user-images.githubusercontent.com/77840111/151663066-f5cd1010-08be-4f3a-886f-2eb0ee2bef92.png)

for any interval [a, b]. By replacing the function f(x) with a suitable polynomial p(x) such that 

![integration px](https://user-images.githubusercontent.com/77840111/151791506-cc8796b6-8a2d-45c2-8067-e19a2613c3e9.png)

This is taken to be an approximation of the integral mentioned above.  

Geometrically this is equivalent to replacing the area enclosed by the curve y = f(x) between the ordinates x = a and x = b by that of p(x).
The approximation of _I_ is usually known as _numerical integration_ or _quadrature_. 

A quadrature formula is said to be of _closed type_ if the  lower limit a and the upper limit b of the integration is taken as interpolating points;
otherwise, the formula is referred as open type.  

  
  # Two important concepts
  **(a) Degree of precision **
