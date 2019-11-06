org 100h

;;;;;;;;;;;;;;;;
;	Queremos almacenar en AX la suma de los regisros
;	AH,BH,CH,DH
;
;	Es Bueno notar que a lo sumo en cada registro hay un valor de 2^8-1
;	Por lo que la suma es como mucho 4*(2^8-1)
;       Este valor puede ser representado tranquilamente en un registro de 16 bits 
;
;       Pero si hacemos sumas en registros de 1 byte no sabemos si hay desbordamiento o no
;	Por lo que nos conviene hacer la cuenta en registros de 2 bytes	
;;;;;;;;;;;;;;;;


mov al, ah    ;Copiamos el contenido en la parte baja
sub ah, ah    ;Limpiamos la parte alta del registro

;El valor debe estar en la parte baja ya que de esta forma
;El registro ax comparte el mismo valor que queriamos sumar originalmente
;Es importante limpiar la parte alta del registro ya que sino esto ultimo no se cumple

mov al, ah 
sub ah, ah 

mov bl, bh 
sub bh, bh 

mov cl, ch 
sub ch, ch 

mov dl, dh 
sub dh, dh
 
add ax, bx
add ax, cx
add ax, dx

ret
