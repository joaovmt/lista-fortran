program Ex1L3

	character(500) k
	
	read(*,'(a50)') k
	write(*,'(a50)') k
	
end program

integer function fatorial(x)
	implicit none
	
	integer :: x, fat = 1, i
	
	do i = 1, x, 1
		fat = fat * i
	end do
	
	fatorial = fat
end function