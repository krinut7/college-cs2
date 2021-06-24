program enshu_circle
      ! author: Krishna Soni (B8TB1707)
      ! a program to calculate the area of cirlce of radius 1, x^2 + y^2 = 1
      ! we would calculate the area of a quarter of a circle using intergration
      ! and multiply it by 4 at the end. 
      implicit none
      integer, parameter :: N=10000   ! number of small rectangle to be used
      real, parameter :: pi = 3.14      
      integer :: i      ! interative variable
      real :: area=0, tharea, f, dx, a=0, b=1        ! [a,b] is the domain of the integration    
      dx = 1.0/N
      do i = 1, N
        f = sqrt(1 - (dx*i)*(dx*i))
        area = area + f*dx
      enddo
      area = area*4     ! area of complete circle
      tharea = pi
      print *, "area = ", area, "theoritical area = ", tharea
endprogram enshu_circle
