program allo
	implicit none
	
	integer, dimension(:), allocatable :: joao
	integer i, n
	
	n = 3
	allocate(joao(n))
	
	do i = 1, n
		read*, joao(i)
	end do
	
	do i = 1,n 
		write(*,*) joao(i)
	end do
	
	deallocate(joao)
end program