program enshu_sphere
      ! author: Krishna Soni (B8TB1707)
      ! a program to calculate the volume of sphere of radius 1, x^2 + y^2 +z^2 = 1
      ! the basic idea is to find the volume by dividing the sphere into small cylinders. 
      ! to find the volume of the cylinder, we would find the area of a circle at a point z and 
      ! then multiply it with dz. The area for that cylinder will be found using the same algorithm as
      ! enshu_circle

      implicit none
      integer, parameter :: N=10000   ! number of small rectangle to be used
      real, parameter :: pi = 3.14      
      integer :: i,j      ! iterative variable
      double precision :: area, volume=0, thvolume, f, dx, dz, a=0, b, r=1  ! here b is the radius of circle at z
      dz = 1.0/N
      do j = N, 0, -1
        b = (1.0/N)*j    
        dx = b/N
        area = 0
        do i = 1, N
                f = sqrt(1 - (dx*i)*(dx*i))
                area = area + f*dx
        enddo
        area = area*4     ! area of complete circle
        if (j<100) then
        print *, "area", j, "==", area
        endif
        volume = volume + area*dz
      enddo
      volume = volume*2
      thvolume = pi*(4.0/3.0)
      print *, "volume = ", volume, "theoritical volume = ", thvolume
      
endprogram enshu_sphere
