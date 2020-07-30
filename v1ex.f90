program Ex1
	implicit none
	
	Integer :: numero
	
	write(*,*) "Forneca um numero"
	read(*,*) numero
	
	if(mod(numero, 5) == 0) then
		write(*, *) numero, "e multiplo de ", 5
	end if
	
	if(mod(numero, 7) == 0) then
		write(*, *) numero, "e multiplo de ", 7
	end if
	
	if(mod(numero, 3) == 0) then
		write(*, *) numero, "e multiplo de ", 3
	end if
	
end program