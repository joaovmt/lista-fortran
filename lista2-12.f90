program Ex1L2

	Integer :: k, n
	Real, parameter :: x, pi, senoConstroi, seno = 0
	Integer, external :: fatorial
	
	read(*,*) k
	x = 180/k
	do n = 0, k, 1
		senoConstroi = (-1)**n
		senoConstroi = senoConstroi / fatorial((2*n)+1)
		senoConstroi = senoConstroi * (x**((2*n)+1))
		
		write(*,*) senoConstroi
		seno = seno + senoConstroi
		
		senoConstroi = 0
	end do
	

	pi = k * seno
	
	write(*,*) "Pi e: ", pi
	
end program

integer function fatorial(x)
	implicit none
	
	integer :: x, fat = 1, i
	
	do i = 1, x, 1
		fat = fat * i
	end do
	
	fatorial = fat
end function