program enshu_1
      ! author: Krishna Soni (B8TB1707)
      ! a program to calculate the area of cirlce of radius 1, x^2 + y^2 = 1
      ! we would calculate the area of a quarter of a circle using intergration
      ! and multiply it by 4 at the end. 
      implicit none
      integer, parameter :: N=100   ! number of small rectangle to be used
      real, parameter :: pi = 3.14      
      integer :: i,j      ! interative variable
      real :: area, volume=0, thvolume, f, dx, dz, a=0, b, r=1        ! [a,r] is the domain of the integration
      dz = (r-a)/N
      do j = N-1, 0, -1
        b = dz*j    
        dx = abs((b-a)/N)
        area = 0
        do i = 1, N
                f = sqrt(1 - (dx*i+a)**2)
                area = area + f*dx
        enddo
        area = area*4     ! area of complete circle
        volume = volume + area*dz
      enddo
      volume = volume*2
      thvolume = pi*(4.0/3.0)
      print *, "volume = ", volume, "theoritical volume = ", thvolume
      
endprogram enshu_1
