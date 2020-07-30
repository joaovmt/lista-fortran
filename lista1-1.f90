program Ex1
	implicit none
	
	Real :: x, y, z, maior

	
	write(*,*) "Forneça três números"
	read(*,*) x, y, z
	
	if(x > y) then
		maior = x
	else
		maior = y
	end if
	
	if(z > maior) then
		maior = z
	end if
	
	write(*,*) "O maior número é ", maior
	
end program