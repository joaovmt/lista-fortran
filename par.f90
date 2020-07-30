program ImparPar
	implicit none
	
	integer :: numero
	
	read*, numero
	
	if(mod(numero,2) == 0) then
		write(*,*) "Este numero e par!"
	else
		write(*,*) "Este numero e impar!"
	end if
	
end program