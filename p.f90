program Ex12
	implicit none
	integer, dimension (3,3) :: matrizEnviar
	integer :: i
	
	call preenchematrizResultado(matrizEnviar)
	!call trocaLinhas(matrizEnviar, matrizEnviar)
	!call trocaColunas(matrizEnviar, matrizEnviar)
	!call trocaDiagonais(matrizEnviar, matrizEnviar)
	call trocaColunaLinha(matrizEnviar, matrizEnviar)
	
	write(*,*) matrizEnviar(1, 1), " ",matrizEnviar(1, 2), " ",matrizEnviar(1, 3)
	write(*,*) matrizEnviar(2, 1), " ",matrizEnviar(2, 2), " ",matrizEnviar(2, 3)
	write(*,*) matrizEnviar(3, 1), " ",matrizEnviar(3, 2), " ",matrizEnviar(3, 3)

end program

subroutine preenchematrizResultado(matriz)
	implicit none
	integer, intent(out), dimension(3,3) :: matriz
	integer :: i, j
	
	! i é a linha e j a coluna
	
	do i = 1, 3, 1
		do j = 1, 3, 1
			write(*,*) "Insira um valor:"
			read*, matriz(i,j)
		end do
	end do
end subroutine

subroutine trocaLinhas(matriz, matrizResultado)
	implicit none
	integer, dimension(3) :: vetor !vetor da troca
	integer, intent(out), dimension(3,3) :: matrizResultado
	integer, intent(in), dimension(3,3) :: matriz
	integer :: j
	
	matrizResultado = matriz
	
	do j = 1, 3! vai passar de coluna em coluna na linha 2 e armazenar no vetor
		vetor(j) = matrizResultado(1, j) !linha dois vai pro vetor j
		matrizResultado(1, j) = matrizResultado(3, j) !linha 2 recebe linha 8
		matrizResultado(3, j) = vetor(j) !linha 8 recebe linha 2 que tava no vetor j
	end do
		
end subroutine

subroutine trocaColunas(matriz, matrizResultado)
	implicit none
	integer, dimension (3) :: vetor !vetor da troca
	integer, intent(out), dimension(3,3) :: matrizResultado
	integer, intent(in), dimension(3,3) :: matriz
	integer :: i
	
	matrizResultado = matriz
	
	do i = 1, 3! 
		vetor(i) = matrizResultado(i, 3) !vetor recebe coluna 4
		matrizResultado(i, 3) = matrizResultado(i, 1) ! coluna 4 recebe coluna 10
		matrizResultado(i, 1) = vetor(i) !coluna 10 recebe coluna 4 (que tava no vetor)
	end do
	
end subroutine


subroutine trocaDiagonais(matriz, matrizResultado)
	implicit none
	integer, dimension (3) :: vetorPrincipal, vetorSecundario !vetor da troca
	integer, intent(out), dimension(3,3) :: matrizResultado
	integer, intent(in), dimension(3,3) :: matriz
	integer :: j, i

	matrizResultado = matriz
	
	do i = 1, 3
		do j = 1, 3
			if(i == j) then ! se o numero coluna for igual ao numero da linha, o valor faz parte da matriz principal
				vetorPrincipal(i) = matrizResultado(i, j) ! vetor recebe diagonal principal
			end if
		end do
	end do
	
	do i = 1, 3
		do j = 1, 3
			if(i+j == 4) then ! se o numero coluna for igual ao numero da linha, o valor faz parte da matriz principal
				vetorSecundario(i) = matrizResultado(i,j) ! vetor recebe diagonal secundaria
			end if
		end do
	end do
	
	do i = 1, 3
		do j = 1, 3
			if(i+j == 4) then ! se o numero coluna for igual ao numero da linha, o valor faz parte da matriz principal
				matrizResultado(i, j) = vetorPrincipal(i) ! diagonal secundaria recebe diagonal primaria
			end if
		end do
	end do
	
	
	do i = 1, 3
		do j = 1, 3
			if(i == j) then ! se o numero coluna for igual ao numero da linha, o valor faz parte da matriz principal
				matrizResultado(i,j) = vetorSecundario(i) ! diagonal primaria recebe diagonal secundaria
			end if
		end do
	end do

end subroutine

subroutine trocaColunaLinha(matriz, matrizResultado)
	implicit none
	integer, dimension (3) :: vetorLinha, vetorColuna !vetor da troca
	integer, intent(out), dimension(3,3) :: matrizResultado
	integer, intent(in), dimension(3,3) :: matriz
	integer :: i, j
	
	matrizResultado = matriz
	
	do j = 1,3 
		vetorLinha(j) = matrizResultado(3, j) !vetorLinha recebe linha 5
	end do
	
	do i = 1,3
		vetorColuna(i) = matrizResultado(i, 1) !vetorColuna recebe coluna 10
	end do
	
	do i = 1,3
		matrizResultado(i, 1) = vetorLinha(i) !coluna 10 recebe linha 5
	end do
	
	do j = 1,3
		matrizResultado(3, j) = vetorColuna(j) !linha 5 recebe coluna 10
	end do

end subroutine

