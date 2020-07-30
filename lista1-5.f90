program Ex1
	implicit none
	
	Real :: a, b, troca
	
	write(*,*) "Forneca a e b"
	read(*,*) a, b
	
	troca = a
	a = b
	b = troca

	write(*,*) "A = ", a, "B = ", b
	
end program