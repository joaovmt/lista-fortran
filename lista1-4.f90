program Ex1
	implicit none
	
	Real :: a, b,c, areaTriangulo, areaCirculo, areaTrapezio, pi = 3.1415
	
	write(*,*) "Forneca a, b e c"
	read(*,*) a, b, c
	
	areaTriangulo = a * b
	areaTriangulo = areaTriangulo / 2
	
	areaCirculo = pi * (c*c)
	
	areaTrapezio = (a + b) * c
	areaTrapezio = areaTrapezio / 2
	
	write(*,*) "Area triangulo: ", areaTriangulo, "Area circulo: ", areaCirculo, "Area trapezio: ", areaTrapezio 
	
end program