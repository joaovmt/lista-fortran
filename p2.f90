program Pessoas
	implicit none
	real :: valor
	integer :: pess, i
	integer, dimension(:), allocatable :: idadesRecebidas
	character(50), dimension(:), allocatable :: nomesRecebidos

	pess = recebeQuantidade(valor) ! Recebe qtd de pessoas
	
	allocate (idadesRecebidas(pess)) ! Dimensiona vetor idades
	allocate (nomesRecebidos(pess)) ! Dimensiona vetor nomes
	
	call nomesIdade(pess, nomesRecebidos, idadesRecebidas) ! Envia qtd e recebe vetor nomes e idades
	call mostraDados(pess, nomesRecebidos, idadesRecebidas) ! Mostra nome completo e idade de cada um
	call mostraCrescente(pess, nomesRecebidos, idadesRecebidas) ! Mostra nome completo em ordem crescente de idade
	call mostraEspecifico(pess, nomesRecebidos, idadesRecebidas) ! Mostra nome completo e idade do entre 40 e 60
		
	contains
		real function recebeQuantidade(qtd)
			implicit none
			real, intent(out) :: qtd ! vai mandar de volta na funcao
			real :: recebeValor !recebe do usuario
			
			write(*,*) "Digite a quantidade de pessoas que o programa recebera"
			read*, recebeValor
			
			qtd = recebeValor
			
		end function recebeQuantidade
end program Pessoas


subroutine nomesIdade(pess, nomes, idades)
	implicit none
	
	integer, intent(in) :: pess ! quantas pessoas sao
	integer, intent(out), dimension(pess) :: idades
	character(50), intent(out), dimension(pess) :: nomes
	integer :: i = 1
	
	integer :: idadeAtual
	character(100) :: nomeAtual

	do while(i <= pess)
		write(*,*) "Digite seu nome!"
		read(*,'(a50)'), nomeAtual
		
		write(*,*) "Digite sua idade!"
		read*, idadeAtual
		
		if(idadeAtual > 0 .and. idadeAtual < 100) then ! se idade > 0 e < 100 armazena nos vetores
			nomes(i) = nomeAtual 
			idades(i) = idadeAtual
			write(*,*) "Pessoa salva!"
			write(*,*) "-----------------------------"
			i = i + 1 ! vai avancar
		else
			write(*,*) "Idade invalida!"
			write(*,*) "-----------------------------"
			! continua no msm valor de i
		end if
	end do
	
end subroutine nomesIdade
!----------------------------------------------------
subroutine mostraDados(pess, nomes, idades)
	integer, intent(in) :: pess ! quantas pessoas sao
	character(50), intent(in), dimension(pess) :: nomes ! recebe o vetor nomes
	integer, intent(in), dimension(pess) :: idades ! recebe o vetor idades
	integer :: i
	write(*,*) "Todos os cadastrados"
	
	do i = 1, pess, 1
		write(*,*) "Nome: ", nomes(i)
		write(*,*) "Idade: ", idades(i)
		write(*,*) "--------"
	end do
	
end subroutine mostraDados
!----------------------------------------------------
subroutine mostraCrescente(pess, nomes, idades)
	integer, intent(in) :: pess ! quantas pessoas sao
	character(50), intent(in), dimension(pess) :: nomes ! recebe o vetor nomes
	integer, intent(in), dimension(pess) :: idades ! recebe o vetor idades
	integer :: i
	write(*,*) "Cadastrados em ordem crescente de idade"
	
	do idadeRef = 1, 99, 1 ! vai da idade 1 ate a 99, q sao as permitidas
	i = 1
		do while(i <= pess)
			if(idades(i) == idadeRef) then ! exite alguem com essa idade?
				write(*,*) nomes(i) ! se sim mostra o nome
			end if
			i = i+1
		end do
	end do
end subroutine mostraCrescente
!----------------------------------------------------
subroutine mostraEspecifico(pess, nomes, idades)
	integer, intent(in) :: pess ! quantas pessoas sao
	character(50), intent(in), dimension(pess) :: nomes ! recebe o vetor nomes
	integer, intent(in), dimension(pess) :: idades ! recebe o vetor idades
	integer :: i
	write(*,*) "Cadastrados com mais de 40 e menos de 60 anos"
	
	do i = 1, pess, 1
		if(idades(i) > 40 .and. idades(i) < 60) then
			write(*,*) "Nome: ", nomes(i)
		end if
	end do
	
end subroutine mostraEspecifico
!----------------------------------------------------
