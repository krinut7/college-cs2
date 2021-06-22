program enshu_1
      ! a program to calculate the integral of the function y = 1 - x^2 in domain of [a,b]
      ! author: Krishna Soni (B8TB1707)
      implicit none
      integer, parameter :: N=100   ! number of small rectangle to be used
      integer :: i      ! interative variable
      real :: area=0, tharea, f, dx, a=1, b=2        ! [a,b] is the domain of the integration    
      dx = abs((b-a)/N)
      do i = 1, N
        f = 1 - (dx*i+a)**2
        area = area + f*dx
      enddo
      tharea = (b-a) - (b**3 - a**3)/3
      print *, "area = ", area, "theoritical area = ", tharea
endprogram enshu_1
