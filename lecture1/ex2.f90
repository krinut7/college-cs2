program ex1_1_2
      implicit none
      real :: xdeg, xrad, y
      real, parameter :: pi = 3.14
      xdeg = 45e0
      xrad = (pi/180)*xdeg
      y = 1.5418/(2*sin(xrad))
      print *, y
end program ex1_1_2

     
