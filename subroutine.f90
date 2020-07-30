subroutine subrot(i,x,y)
	integer, intent(in) :: i ! entrada
	integer, intent(out) :: x,y ! saída
	x = i**2
	y = i**3
end subroutine subrot

program main
	implicit none
	integer :: i,a,b
	i = 4
	call subrot(i,a,b)
	print*,"	i	,	i	2	,	i	3	=",i,a,b
end program main