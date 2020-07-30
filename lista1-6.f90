program Ex1
	implicit none
	
	Integer :: idade, qtdMaisCinq = 0, maisIdade = 0
	Real :: altura, mediaAlturaMaisCinq = 0
	Character(50) :: nome, nomeMaisVelh
	
	do while((idade > 0) .or. (altura > 0))
			write(*,*) "Forneca seu nome, idade e altura"
			read(*,*) nome, idade, altura
			
			if(idade >= 50) then !!tem mais de 50
				qtdMaisCinq = qtdMaisCinq + 1
				mediaAlturaMaisCinq = mediaAlturaMaisCinq + altura
			end if
			
			if(idade > maisIdade) then
				nomeMaisVelh = nome
				maisIdade = idade
			end if
	end do
	
	mediaAlturaMaisCinq = mediaAlturaMaisCinq / qtdMaisCinq
	
	write(*,*) "Nome do mais velho: ", nomeMaisVelh, "/t Media altura dos +50: ", mediaAlturaMaisCinq
	
end program