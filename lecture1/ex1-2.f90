program ex1_2
      implicit none
      real :: a=2, b=-2, c=-12
      complex :: root1, root2
      root1 = (-b + sqrt(b**2 - 4*a*c))/(2*a)
      root2 = (-b - sqrt(b**2 - 4*a*c))/(2*a)
      print *, "root1 = ", root1 
      print *, "root2 = ", root2
end program ex1_2
