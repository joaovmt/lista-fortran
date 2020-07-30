program Ex1L2
	implicit none
	
	Integer :: numero, n = 1, k, potNeg
	Real :: liouville = 0
	
	write(*,*) "Forneca um numero"
	read(*,*) numero
	
	do k = 1, numero, 1
	
		! 0.1 eh o inverso de 10, usado potencia negativa
		liouville = liouville+(0.1**n)
	
		! fatorial
		n = n * k
		write(*,*) n
	end do
	
	write(*,*) liouville
	
	
end program