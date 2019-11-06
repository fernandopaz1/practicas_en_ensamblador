org 100h

sub al,al
sub cl,cl
mov bx, offset VECTOR1

ciclo:
	add al, [bx]
	inc bx
	inc cl
	cmp cl,10
	je finCiclo
	jmp ciclo
finCiclo:

ret

VECTOR1 db 10 dup (?)

