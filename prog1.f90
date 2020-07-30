program Prog1
	implicit none
	
	integer :: k, j, l
	integer, dimension(5) :: vetor
	
	do k = 1,5,1
		read*, vetor(k)
	end do
	
	do l = 1,500,1
		do j = 1,5,1
			write(*,*) vetor(j)
		end do
	end do
	
end program