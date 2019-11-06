org 100h

sub ax,ax
sub cl,cl
mov bx, offset VECTOR2

ciclo:
	mov dl, [bx]
	inc bx
	mov dh, [bx]

	add al, dx
	inc bx
	inc cl
	cmp cl,10
	je finCiclo
	jmp ciclo
finCiclo:

ret


VECTOR2 dw 128, 314, 1024, 127, 16000, 65000 ;Son 10 bytes
