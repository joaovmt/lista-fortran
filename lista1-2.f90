program Ex1
	implicit none
	
	Real :: a, b, c, delta, raizum, raizdois
	
	write(*,*) "Forneca os valores de a, b e c da equacao"
	read(*,*) a, b,c
	
	delta = (b*b) - (4*a*c)
		
	raizum = -(b) + sqrt(delta)
	raizum = raizum / (2*a)
	
	raizdois = -(b) - sqrt(delta)
	raizdois = raizdois / (2*a)
	
	write(*,*) raizum, " ", raizdois
	
end program