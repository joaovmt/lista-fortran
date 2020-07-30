program Exemplo
	implicit none
	real::a,b,c
	a=1
	b=2
	open(1,file="data.txt",action="write",status="new")
	write(1,*)a,b
	close(1)
	
	open(2,file="data.txt",action="read",status="old")
	read(2,*) a,b
	close(2)
	
	a = 2.0*a
	b = 2.0*b
end program Exemplo