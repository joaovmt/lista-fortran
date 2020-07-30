program Ex1L3

	Integer :: k, n, val = 2
	Real :: fracao, total = 0
	
	read(*,*) k
	
	do n = 1, k, 1
		fracao = (1/n)
		write(*, '(f50.10)') fracao
		if(mod(n, val) == 0) then
			total = total - fracao
		else
			total = total + fracao
		end if
	end do
	
	write(*,*) total
end program

integer function fatorial(x)
	implicit none
	
	integer :: x, fat = 1, i
	
	do i = 1, x, 1
		fat = fat * i
	end do
	
	fatorial = fat
end function