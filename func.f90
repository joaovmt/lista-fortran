program x
	implicit none
	integer, external :: divide
	integer :: valor1, valor2
	
	read*, valor1, valor2
	write(*,*) divide(valor1, valor2)
	
end program

integer function divide(numero1,numero2)
	implicit none
	integer, intent(in) :: numero1, numero2
	
	divide = numero1/numero2
end function