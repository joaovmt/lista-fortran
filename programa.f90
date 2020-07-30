program Teste
	implicit none
	
	Character(100) :: Nome
	
	write(*,*) "Digite o seu nome"
	read(*,'(a100)') Nome
	write(*,*) Nome
end program